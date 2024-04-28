from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_ville,name='ville'),
    path('ajout_ville/',views.ajouter_ville,name='ajout_ville'),
    path('modifie_ville/<str:pk>',views.modifier_ville,name='modifie_ville'),
    path('supprime_ville/<str:pk>',views.supprimer_ville ,name='supprime_ville'),
    
]