from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_categorie,name='categorie'),
    path('ajout_categorie/',views.ajouter_categorie,name='ajout_categorie'),
    path('modifie_categorie/<str:pk>',views.modifier_categorie,name='modifie_categorie'),
    path('supprime_categorie/<str:pk>',views.supprimer_categorie ,name='supprime_categorie'),
    
]