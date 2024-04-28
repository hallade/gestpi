from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_direction,name='direction'),
    path('ajout_direction/',views.ajouter_direction,name='ajout_direction'),
    path('modifie_direction/<str:pk>',views.modifier_direction,name='modifie_direction'),
    path('supprime_direction/<str:pk>',views.supprimer_direction ,name='supprime_direction'),
    path('detail_direction/<str:pk>',views.detail_direction ,name='detail_direction'),
    
   
    
]
