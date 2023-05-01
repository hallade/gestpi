from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Marque
from marque.filters import MarqueFiltre
from .forms import MarqueForm
from django.contrib.auth.decorators import login_required


#protection de la vue


# Create your views here.


# Create your views here.


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_marque(request):
    marques = Marque.objects.all().order_by('LibMarque') 
    myFilter =MarqueFiltre(request.GET, queryset=marques)
    marques = myFilter.qs
    context ={'myFilter':myFilter,'listemarque': marques}
    return render(request,'marque/marques.html',context)


@login_required(login_url = 'connexion')
def ajouter_marque(request):
    form =MarqueForm()
    if request.method =='POST':
        form = MarqueForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/marque/')
    context = {'form':form}
    return render(request,'marque/maj_marque.html',context)


@login_required(login_url = 'connexion')
def modifier_marque(request,pk):
    marque = Marque.objects.get(id=pk)
    form =MarqueForm(instance=marque)
    if request.method =='POST':
        form = MarqueForm(request.POST,instance=marque)
        if form.is_valid():
            form.save()
            return redirect('/marque/')
    context = {'form':form}
    return render(request,'marque/maj_marque.html',context)


@login_required(login_url = 'connexion')
def supprimer_marque(request,pk):
    marque = Marque.objects.get(id=pk)  
    if request.method =='POST':
        marque.delete()
        return redirect('/marque/')
    context = {'item':marque}
    return render(request,'marque/supprimer_marque.html',context)

