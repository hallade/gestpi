from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_zone,name='zone'),
    path('ajout_zone/',views.ajouter_zone,name='ajout_zone'),
    path('modifie_zone/<str:pk>',views.modifier_zone,name='modifie_zone'),
    path('supprime_zone/<str:pk>',views.supprimer_zone ,name='supprime_zone'),
    
]