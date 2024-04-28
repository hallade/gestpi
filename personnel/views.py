from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required


#protection de la vue



# Create your views here.
@login_required(login_url = 'connexion')
def Liste_personnel(request):
    return render(request,'personnel/liste_personnel.html')
