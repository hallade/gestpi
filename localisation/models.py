from django.db import models


# Create your models here.
class Localisation(models.Model):
    LibLocalisation = models.CharField(max_length=50,unique=True,null=False)

    

    def __str__(self):
        return self.LibLocalisation
