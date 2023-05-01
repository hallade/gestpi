"""projet URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('categorie/', include('categorie.urls')),
    path('bureau/', include('bureau.urls')),
    path('', include('compte.urls')),
    path('direction/', include('direction.urls')),
    path('etat/', include('etat.urls')),
    path('groupe/', include('groupe.urls')),
    path('intervention/', include('intervention.urls')),
    path('localisation/', include('localisation.urls')),
    path('marque/', include('marque.urls')),
    path('materiel/', include('materiel.urls')),   
    path('panne/', include('panne.urls')),
    path('region/', include('region.urls')),   
    path('typemateriel/', include('typemateriel.urls')),
    path('personnel/', include('personnel.urls')),
    path('ville/', include('ville.urls')),
    path('zone/', include('zone.urls')),
]
