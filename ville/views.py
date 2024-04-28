from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Ville
from ville.filters import VilleFiltre
from .forms import VilleForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator


#protection de la vue



# Create your views here.


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_ville(request):
    villes = Ville.objects.all().order_by('LibVille') 
    myFilter =VilleFiltre(request.GET, queryset=villes)
    villes = myFilter.qs

    # Paginer les données pour afficher 10 éléments par page
    paginator = Paginator(villes, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context ={'myFilter':myFilter,'listeville': villes,'page_obj':page_obj}
    return render(request,'ville/villes.html',context)


@login_required(login_url = 'connexion')
def ajouter_ville(request):
    form =VilleForm()
    if request.method =='POST':
        form = VilleForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/ville/')
    context = {'form':form}
    return render(request,'ville/maj_ville.html',context)


@login_required(login_url = 'connexion')
def modifier_ville(request,pk):
    ville = Ville.objects.get(id=pk)
    form =VilleForm(instance=ville)
    if request.method =='POST':
        form = VilleForm(request.POST,instance=ville)
        if form.is_valid():
            form.save()
            return redirect('/ville/')
    context = {'form':form}
    return render(request,'ville/maj_ville.html',context)


@login_required(login_url = 'connexion')
def supprimer_ville(request,pk):
    ville = Ville.objects.get(id=pk)  
    if request.method =='POST':
        ville.delete()
        return redirect('/ville/')
    context = {'item':ville}
    return render(request,'ville/supprimer_ville.html',context)

