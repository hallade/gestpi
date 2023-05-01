from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import TypeMateriel
from typemateriel.filters import TypeMaterielFiltre
from .forms import TypeMaterielForm
from django.contrib.auth.decorators import login_required


#protection de la vue


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_typemateriel(request):
    typemateriels = TypeMateriel.objects.all().order_by('LibTypeMateriel') 
    myFilter =TypeMaterielFiltre(request.GET, queryset=typemateriels)
    typemateriels = myFilter.qs
    context ={'myFilter':myFilter,'listetypemateriel': typemateriels}
    return render(request,'typemateriel/typemateriels.html',context)


@login_required(login_url = 'connexion')
def ajouter_typemateriel(request):
    form =TypeMaterielForm()
    if request.method =='POST':
        form = TypeMaterielForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/typemateriel/')
    context = {'form':form}
    return render(request,'typemateriel/maj_typemateriel.html',context)


@login_required(login_url = 'connexion')
def modifier_typemateriel(request,pk):
    typemateriel = TypeMateriel.objects.get(id=pk)
    form =TypeMaterielForm(instance=typemateriel)
    if request.method =='POST':
        form = TypeMaterielForm(request.POST,instance=typemateriel)
        if form.is_valid():
            form.save()
            return redirect('/typemateriel/')
    context = {'form':form}
    return render(request,'typemateriel/maj_typemateriel.html',context)


@login_required(login_url = 'connexion')
def supprimer_typemateriel(request,pk):
    typemateriel = TypeMateriel.objects.get(id=pk)  
    if request.method =='POST':
        typemateriel.delete()
        return redirect('/typemateriel/')
    context = {'item':typemateriel}
    return render(request,'typemateriel/supprimer_typemateriel.html',context)


