from django.db import models

# Create your models here.
class Bureau(models.Model):
    LibBureau = models.CharField(max_length=60, null=False )
    

    def __str__(self):
        return self.LibBureau
