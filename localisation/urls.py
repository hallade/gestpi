from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_localisation,name='localisation'),
    path('ajout_localisation/',views.ajouter_localisation,name='ajout_localisation'),
    path('modifie_localisation/<str:pk>',views.modifier_localisation,name='modifie_localisation'),
    path('supprime_localisation/<str:pk>',views.supprimer_localisation ,name='supprime_localisation'),
]