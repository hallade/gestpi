from django.db import models

# Create your models here.
class Groupe(models.Model):
    LibGroupe = models.CharField(max_length=15, unique=True,null=False)

    def __str__(self):
        return self.LibGroupe