from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_bureau,name='bureau'),
    path('ajout_bureau/',views.ajouter_bureau,name='ajout_bureau'),
    path('modifie_bureau/<str:pk>',views.modifier_bureau,name='modifie_bureau'),
    path('supprime_bureau/<str:pk>',views.supprimer_bureau ,name='supprime_bureau'),
    
]