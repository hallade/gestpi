from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator


#protection de la vue


# Create your views here.


# Create your views here.


# Create your views here.
@login_required(login_url = 'connexion')
def Liste_intervention(request):
    return render(request,'intervention/interventions.html')
