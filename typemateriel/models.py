from django.db import models

# Create your models here.
class TypeMateriel(models.Model):
    LibTypeMateriel = models.CharField(max_length=25, null=False)
    

    def __str__(self):
        return self.LibTypeMateriel
