from django.db import models
from typemateriel.models import TypeMateriel
from direction.models import Direction
from marque.models import Marque
from bureau.models import Bureau



# Create your models here.
class Materiel(models.Model):
   
    RefDirection = models.ForeignKey(Direction,null=True, on_delete=models.SET_NULL)
    RefBureau = models.ForeignKey(Bureau,null=True,blank = True, on_delete=models.SET_NULL)
    DateAcquisition =models.DateField(null=True,blank =True, auto_now_add=False)
    RefTypeMateriel = models.ForeignKey(TypeMateriel,null=True,on_delete=models.SET_NULL)
    Precision = models.CharField(max_length=50, null=True)
    DesiMateriel = models.CharField(max_length=50, null=True)
    RefMarque = models.ForeignKey(Marque,null=True,blank = True, on_delete=models.SET_NULL)
    NumSerMateriel = models.CharField(max_length=50, null=True) 
    CaractMateriel = models.CharField(max_length=255, null=True)
    Observation = models.TextField(max_length =255,null=True)
    statut =(('OK','OK'),('NOK','NOK'))
    Statut = models.CharField(max_length=3,null=False,choices =statut)
    
    def __str__(self):
        return self.NumSerMateriel,self.CaractMateriel

    