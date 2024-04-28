from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Region
from zone.models import Zone
from region.filters import RegionFiltre
from .forms import RegionForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator

#protection de la vue



# Create your views here.


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_region(request):
    regions = Region.objects.all().order_by('LibRegion') 
    myFilter =RegionFiltre(request.GET, queryset=regions)
    regions = myFilter.qs 

    # Paginer les données pour afficher 10 éléments par page
    paginator = Paginator(regions, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context ={'myFilter':myFilter,'listeregion': regions,'page_obj':page_obj}
    return render(request,'region/regions.html',context)


@login_required(login_url = 'connexion')
def ajouter_region(request):
    form =RegionForm()
    if request.method =='POST':
        form = RegionForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/region/')
    context = {'form':form}
    return render(request,'region/maj_region.html',context)


@login_required(login_url = 'connexion')
def modifier_region(request,pk):
    region = Region.objects.get(id=pk)
    form =RegionForm(instance=region)
    if request.method =='POST':
        form = RegionForm(request.POST,instance=region)
        if form.is_valid():
            form.save()
            return redirect('/region/')
    context = {'form':form}
    return render(request,'region/maj_region.html',context)


@login_required(login_url = 'connexion')
def supprimer_region(request,pk):
    region = Region.objects.get(id=pk)  
    if request.method =='POST':
        region.delete()
        return redirect('/region/')
    context = {'item':region}
    return render(request,'region/supprimer_region.html',context)

