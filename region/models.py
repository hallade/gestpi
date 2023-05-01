from django.db import models
from zone.models import Zone

# Create your models here.
class Region(models.Model):
    LibRegion = models.CharField(max_length=30,unique=True,null=False)
    RefZone = models.ForeignKey(Zone,null=True,blank=True,on_delete=models.SET_NULL)

    def __str__(self):
        return self.LibRegion
