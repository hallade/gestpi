from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import Etat
from etat.filters import EtatFiltre
from .forms import EtatForm
from django.contrib.auth.decorators import login_required


#protection de la vue


# Create your views here.


# Create your views here.


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_etat(request):
    etats = Etat.objects.all().order_by('LibEtat') 
    myFilter =EtatFiltre(request.GET, queryset=etats)
    etats = myFilter.qs
    context ={'myFilter':myFilter,'listeetat': etats}
    return render(request,'etat/etats.html',context)


@login_required(login_url = 'connexion')
def ajouter_etat(request):
    form =EtatForm()
    if request.method =='POST':
        form = EtatForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/etat/')
    context = {'form':form}
    return render(request,'etat/maj_etat.html',context)


@login_required(login_url = 'connexion')
def modifier_etat(request,pk):
    etat = Etat.objects.get(id=pk)
    form =EtatForm(instance=etat)
    if request.method =='POST':
        form = EtatForm(request.POST,instance=etat)
        if form.is_valid():
            form.save()
            return redirect('/etat/')
    context = {'form':form}
    return render(request,'etat/maj_etat.html',context)


@login_required(login_url = 'connexion')
def supprimer_etat(request,pk):
    etat = Etat.objects.get(id=pk)  
    if request.method =='POST':
        etat.delete()
        return redirect('/etat/')
    context = {'item':etat}
    return render(request,'etat/supprimer_etat.html',context)



