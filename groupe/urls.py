from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_groupe,name='groupe'),
    
]