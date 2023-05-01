from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import Localisation
from localisation.filters import LocalisationFiltre
from .forms import LocalisationForm
from django.contrib.auth.decorators import login_required


#protection de la vue


# Create your views here.


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_localisation(request):
    localisations = Localisation.objects.all().order_by('LibLocalisation') 
    myFilter =LocalisationFiltre(request.GET, queryset=localisations)
    localisations = myFilter.qs
    context ={'myFilter':myFilter,'listelocalisation': localisations}
    return render(request,'localisation/localisations.html',context)


@login_required(login_url = 'connexion')
def ajouter_localisation(request):
    form =LocalisationForm()
    if request.method =='POST':
        form = LocalisationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/localisation/')
    context = {'form':form}
    return render(request,'localisation/maj_localisation.html',context)


@login_required(login_url = 'connexion')
def modifier_localisation(request,pk):
    localisation = Localisation.objects.get(id=pk)
    form =LocalisationForm(instance=localisation)
    if request.method =='POST':
        form = LocalisationForm(request.POST,instance=localisation)
        if form.is_valid():
            form.save()
            return redirect('/localisation/')
    context = {'form':form}
    return render(request,'localisation/maj_localisation.html',context)


@login_required(login_url = 'connexion')
def supprimer_localisation(request,pk):
    localisation = Localisation.objects.get(id=pk)  
    if request.method =='POST':
        localisation.delete()
        return redirect('/localisation/')
    context = {'item':localisation}
    return render(request,'localisation/supprimer_localisation.html',context)


