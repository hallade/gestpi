from django.urls import path
from .import views

urlpatterns = [
    path('', views.Liste_personnel,name='personnel'),
    
]