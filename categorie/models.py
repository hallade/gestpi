from django.db import models

# Create your models here.
class Categorie(models.Model):
    LibCategorie = models.CharField(max_length=50, null=False )
    

    def __str__(self):
        return self.LibCategorie
