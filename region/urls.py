from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_region,name='region'),
    path('ajout_region/',views.ajouter_region,name='ajout_region'),
    path('modifie_region/<str:pk>',views.modifier_region,name='modifie_region'),
    path('supprime_region/<str:pk>',views.supprimer_region ,name='supprime_region'),
    
]