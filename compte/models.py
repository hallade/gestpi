from django.db import models
from direction.models import Direction
from django.contrib.auth.models import AbstractUser


class Compte(AbstractUser):
    profil =(('Administrateur','Administrateur'),('Utilisateur','Utilisateur'),('Maintenancier','Maintenancier'))
    Profil = models.CharField(max_length=15,null=False,choices =profil)
   
    NumTel = models.CharField(max_length=10, unique=True,null=False)

    RefDirection = models.ForeignKey(Direction,null=True,blank = True, on_delete=models.SET_NULL)
