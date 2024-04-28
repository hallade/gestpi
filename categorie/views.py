from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Categorie
from categorie.filters import CategorieFiltre
from .forms import CategorieForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator

#protection de la vue




# Create your views here.
@login_required(login_url = 'connexion')
def Liste_categorie(request):
    categories = Categorie.objects.all().order_by('LibCategorie')
    myFilter =CategorieFiltre(request.GET, queryset=categories)
    categories = myFilter.qs

    # Paginer les données pour afficher 10 éléments par page
    paginator = Paginator(categories, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)



    context ={'myFilter':myFilter,'listecategorie': categories,'page_obj':page_obj}
    return render(request,'categorie/categories.html',context)


@login_required(login_url = 'connexion')
def ajouter_categorie(request):
    form =CategorieForm()
    if request.method =='POST':
        form = CategorieForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/categorie/')
    context = {'form':form}
    return render(request,'categorie/maj_categorie.html',context)


@login_required(login_url = 'connexion')
def modifier_categorie(request,pk):
    categorie = Categorie.objects.get(id=pk)
    form =CategorieForm(instance=categorie)
    if request.method =='POST':
        form = CategorieForm(request.POST,instance=categorie)
        if form.is_valid():
            form.save()
            return redirect('/categorie/')
    context = {'form':form}
    return render(request,'categorie/maj_categorie.html',context)


@login_required(login_url = 'connexion')
def supprimer_categorie(request,pk):
    categorie = Categorie.objects.get(id=pk)  
    if request.method =='POST':
        categorie.delete()
        return redirect('/categorie/')
    context = {'item':categorie}
    return render(request,'categorie/supprimer_categorie.html',context)


