from django.db import models
from direction.models import Direction





# Create your models here.
class Personnel(models.Model):
    NomPersonel = models.CharField(max_length=20, null=False)
    PrePersonel = models.CharField(max_length=50, null=False)
    Responsable = models.BooleanField(default=False)
    NumTelPersonnel = models.CharField(max_length=10,null=False)
    
    

    RefDirection= models.ForeignKey(Direction,null=True,on_delete=models.SET_NULL)
   

    def __str__(self):
        return self.NomPersonel,self.PrePersonel
