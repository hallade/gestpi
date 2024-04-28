from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_etat,name='etat'),
    path('ajout_etat/',views.ajouter_etat,name='ajout_etat'),
    path('modifie_etat/<str:pk>',views.modifier_etat,name='modifie_etat'),
    path('supprime_etat/<str:pk>',views.supprimer_etat ,name='supprime_etat'),
    
]
