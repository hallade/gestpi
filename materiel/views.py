from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import Materiel
from materiel.filters import MaterielFiltre
from .forms import MaterielForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator


#protection de la vue



# Create your views here.



# Create your views here.
@login_required(login_url = 'connexion')
def liste_materiel(request):
    materiels = Materiel.objects.all() 
    myFilter =MaterielFiltre(request.GET, queryset=materiels)
    materiels = myFilter.qs

    # Paginer les données pour afficher 10 éléments par page
    paginator = Paginator(materiels, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context ={'myFilter':myFilter,'listemateriel': materiels,'page_obj':page_obj}
    return render(request,'materiel/materiels.html',context)


@login_required(login_url = 'connexion')
def ajouter_materiel(request):
    form =MaterielForm()
    if request.method =='POST':
        form = MaterielForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/materiel/')
    context = {'form':form}
    return render(request,'materiel/maj_materiel.html',context)


@login_required(login_url = 'connexion')
def modifier_materiel(request,pk):
    materiel = Materiel.objects.get(id=pk)
    form =MaterielForm(instance=materiel)
    if request.method =='POST':
        form = MaterielForm(request.POST,instance=materiel)
        if form.is_valid():
            form.save()
            return redirect('/materiel/')
    context = {'form':form}
    return render(request,'materiel/maj_materiel.html',context)


@login_required(login_url = 'connexion')
def supprimer_materiel(request,pk):
    materiel = Materiel.objects.get(id=pk)  
    if request.method =='POST':
        materiel.delete()
        return redirect('/materiel/')
    context = {'item':materiel}
    return render(request,'materiel/supprimer_materiel.html',context)




           