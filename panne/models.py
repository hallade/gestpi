from django.db import models
from personnel.models import Personnel


# Create your models here.
class Panne(models.Model):
    DefautSigPanne = models.CharField(max_length=255, null=False)
    DatSigPanne = models.DateTimeField(auto_now_add=True,null=False)
    

    RefUtilisateur = models.ForeignKey(Personnel,null=True,on_delete=models.SET_NULL)
   

    def __str__(self):
        return self.DefautSigPanne

    