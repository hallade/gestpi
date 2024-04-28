from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Bureau
from bureau.filters import BureauFiltre
from .forms import BureauForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator

#protection de la vue


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_bureau(request):
    bureaux = Bureau.objects.all().order_by('LibBureau') 
    myFilter =BureauFiltre(request.GET, queryset=bureaux)
    bureaux = myFilter.qs

    # Paginer les données pour afficher 10 éléments par page
    paginator = Paginator(bureaux, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)



    context ={'myFilter':myFilter,'listebureau': bureaux,'page_obj':page_obj}
    return render(request,'bureau/bureaux.html',context)


@login_required(login_url = 'connexion')
def ajouter_bureau(request):
    form =BureauForm()
    if request.method =='POST':
        form = BureauForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/bureau/')
    context = {'form':form}
    return render(request,'bureau/maj_bureau.html',context)


@login_required(login_url = 'connexion')
def modifier_bureau(request,pk):
    bureau = Bureau.objects.get(id=pk)
    form =BureauForm(instance=bureau)
    if request.method =='POST':
        form = BureauForm(request.POST,instance=bureau)
        if form.is_valid():
            form.save()
            return redirect('/bureau/')
    context = {'form':form}
    return render(request,'bureau/maj_bureau.html',context)


@login_required(login_url = 'connexion')
def supprimer_bureau(request,pk):
    bureau = Bureau.objects.get(id=pk)  
    if request.method =='POST':
        bureau.delete()
        return redirect('/bureau/')
    context = {'item':bureau}
    return render(request,'bureau/supprimer_bureau.html',context)


