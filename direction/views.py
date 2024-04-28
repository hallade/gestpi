from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import Direction
from materiel.models import Materiel
from direction.filters import DirectionFiltre
from materiel.filters import MaterielFiltre
from .forms import DirectionForm
from .forms import MaterielForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator


#protection de la vue


# Create your views here.


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_direction(request):
    directions = Direction.objects.all().order_by('LibDirection') 
    myFilter =DirectionFiltre(request.GET, queryset=directions)
    directions = myFilter.qs

    # Paginer les données pour afficher 10 éléments par page
    paginator = Paginator(directions, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)



    context ={'myFilter':myFilter,'listedirection': directions,'page_obj':page_obj}
    return render(request,'direction/directions.html',context)


@login_required(login_url = 'connexion')
def ajouter_direction(request):
    form =DirectionForm()
    if request.method =='POST':
        form = DirectionForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/direction/')
    context = {'form':form}
    return render(request,'direction/maj_direction.html',context)


@login_required(login_url = 'connexion')
def modifier_direction(request,pk):
    direction = Direction.objects.get(id=pk)
    form =DirectionForm(instance=direction)
    if request.method =='POST':
        form = DirectionForm(request.POST,instance=direction)
        if form.is_valid():
            form.save()
            return redirect('/direction/')
    context = {'form':form}
    return render(request,'direction/maj_direction.html',context)


@login_required(login_url = 'connexion')
def supprimer_direction(request,pk):
    direction = Direction.objects.get(id=pk)  
    if request.method =='POST':
        direction.delete()
        return redirect('/direction/')
    context = {'item':direction}
    return render(request,'direction/supprimer_direction.html',context)
    

@login_required(login_url = 'connexion')
def detail_direction(request,pk):
    direction = Direction.objects.get(id=pk)  

    materieldir = direction.materiel_set.all()
    myFilter =MaterielFiltre(request.GET, queryset=materieldir)
    materieldir = myFilter.qs
    cptmaterieldir = materieldir.count()
    
    okmaterieldir = materieldir.filter(Statut ='OK')
    cptokmaterieldir = okmaterieldir.count()

    nokmaterieldir = materieldir.filter(Statut ='NOK')
    cptnokmaterieldir = nokmaterieldir.count()

    # Paginer les données pour afficher 10 éléments par page
    paginator = Paginator(materieldir, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
   
    context = {'myFilter':myFilter,'detaildirection':direction,'listematerieldir':materieldir,'totmaterieldir':cptmaterieldir,'totokmaterieldir':cptokmaterieldir,'totnokmaterieldir':cptnokmaterieldir,'page_obj':page_obj}
    return render(request,'direction/detail_direction.html',context)
    
