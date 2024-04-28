from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Zone
from zone.filters import ZoneFiltre
from .forms import ZoneForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator


#protection de la vue



# Create your views here.


# Create your views here.



# Create your views here.
@login_required(login_url = 'connexion')
def Liste_zone(request):
    zones = Zone.objects.all().order_by('LibZone') 
    myFilter =ZoneFiltre(request.GET, queryset=zones)
    zones = myFilter.qs

    # Paginer les données pour afficher 10 éléments par page
    paginator = Paginator(zones, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context ={'myFilter':myFilter,'listezone': zones,'page_obj':page_obj}
    return render(request,'zone/zones.html',context)


@login_required(login_url = 'connexion')
def ajouter_zone(request):
    form =ZoneForm()
    if request.method =='POST':
        form = ZoneForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/zone/')
    context = {'form':form}
    return render(request,'zone/maj_zone.html',context)


@login_required(login_url = 'connexion')
def modifier_zone(request,pk):
    zone = Zone.objects.get(id=pk)
    form =ZoneForm(instance=zone)
    if request.method =='POST':
        form = ZoneForm(request.POST,instance=zone)
        if form.is_valid():
            form.save()
            return redirect('/zone/')
    context = {'form':form}
    return render(request,'zone/maj_zone.html',context)


@login_required(login_url = 'connexion')
def supprimer_zone(request,pk):
    zone = Zone.objects.get(id=pk)  
    if request.method =='POST':
        zone.delete()
        return redirect('/zone/')
    context = {'item':zone}
    return render(request,'zone/supprimer_zone.html',context)


