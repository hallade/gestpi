from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_marque,name='marque'),
    path('ajout_marque/',views.ajouter_marque,name='ajout_marque'),
    path('modifie_marque/<str:pk>',views.modifier_marque,name='modifie_marque'),
    path('supprime_marque/<str:pk>',views.supprimer_marque ,name='supprime_marque'),
    
]