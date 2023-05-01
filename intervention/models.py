from django.db import models
from panne.models import Panne
from personnel.models import Personnel
from etat.models import Etat

# Create your models here.
class Intervention(models.Model):
    RemIntervention = models.CharField(max_length=255,null=True)
    TachEffectue = models.CharField(max_length=255,null=False)
    DatDebIntervention = models.DateTimeField(null=False)
    DatFinIntervention = models.DateTimeField(null=False)

    RefPanne = models.ForeignKey(Panne,null=True,on_delete=models.SET_NULL)
    RefPersonnel =models.ForeignKey(Personnel,null=True,on_delete=models.SET_NULL)
    RefEtat = models.ForeignKey(Etat,null=True,on_delete=models.SET_NULL)


    def __str__(self):
        return self.RemIntervention,self.TachEffectue
    