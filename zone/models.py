from django.db import models

# Create your models here.
class Zone(models.Model):
    LibZone = models.CharField(max_length=30,unique=True,null=False)
   

    def __str__(self):
        return self.LibZone
        