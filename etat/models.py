from django.db import models

# Create your models here.
class Etat(models.Model):
    LibEtat = models.CharField(max_length=15, unique=True,null=False)

    def __str__(self):
        return self.LibEtat
    