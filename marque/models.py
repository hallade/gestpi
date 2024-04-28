from django.db import models

# Create your models here.
class Marque(models.Model):
    LibMarque = models.CharField(max_length=20, unique=True,null=False)

    def __str__(self):
        return self.LibMarque