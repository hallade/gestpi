from django.db import models
from region.models import Region

# Create your models here.
class Ville(models.Model):
    LibVille = models.CharField(max_length=30,unique=True,null=False)

    RefRegion = models.ForeignKey(Region,null=True,on_delete=models.SET_NULL)

    def __str__(self):
        return self.LibVille
