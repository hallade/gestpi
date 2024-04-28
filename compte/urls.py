from django.urls import path
from .import views


urlpatterns = [
   
    path('', views.connexion,name='connexion'),
    path('deconnexion',views.deconnexion,name='deconnexion'),
    path('inscription',views.inscription, name='inscription'),
    path('administrateur',views.administrateur , name='administrateur'),
    path('utilisateur',views.utilisateur, name='utilisateur'),
    path('maintenancier',views.maintenancier, name='maintenancier'),
    path('compte',views.Liste_compte, name='compte'),
    path('reinitialise_compte/<str:pk>',views.reinitialiser_compte,name='reinitialise_compte'),
    path('supprime_compte/<str:pk>',views.supprimer_compte ,name='supprime_compte'),
    
]