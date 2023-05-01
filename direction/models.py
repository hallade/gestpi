from django.db import models
from ville.models import Ville
from localisation.models import Localisation
from categorie.models import Categorie

# Create your models here.
class Direction(models.Model):
    RefVille = models.ForeignKey(Ville,null=True,on_delete=models.SET_NULL)
    RefLocalisation = models.ForeignKey(Localisation,null=True,blank=True, on_delete=models.SET_NULL)
    LibDirection = models.CharField(max_length=100,unique=True,null=True) 
    LibAbbDirection = models.CharField(max_length=20,unique=True,null=False)
    RefCategorie = models.ForeignKey(Categorie,null=True,on_delete=models.SET_NULL)
    Responsable = models.CharField(max_length=25,unique=False,null=False)
    Telephone = models.CharField(max_length=10,unique=False,null=True)
    Email = models.EmailField() 
    Detail = models.CharField(max_length=100,unique=False,null=True) 
    TotalEmploye = models.IntegerField()
    Besoins = models.TextField(max_length=255,blank = True, null=True)

    

    def __str__(self):
        return self.LibAbbDirection