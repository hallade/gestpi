from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_typemateriel,name='typemateriel'),
    path('ajout_typemateriel/',views.ajouter_typemateriel,name='ajout_typemateriel'),
    path('modifie_typemateriel/<str:pk>',views.modifier_typemateriel,name='modifie_typemateriel'),
    path('supprime_typemateriel/<str:pk>',views.supprimer_typemateriel ,name='supprime_typemateriel'),
    
]