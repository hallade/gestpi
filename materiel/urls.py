from django.urls import path
from .import views

urlpatterns = [
    
    path('',views.liste_materiel,name='materiel'),
    path('ajout_materiel/',views.ajouter_materiel,name='ajout_materiel'),
    path('modifie_materiel/<str:pk>',views.modifier_materiel,name='modifie_materiel'),
    path('supprime_materiel/<str:pk>',views.supprimer_materiel ,name='supprime_materiel'),
    
]