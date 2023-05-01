import django_filters
from .models import Materiel

class MaterielFiltre(django_filters.FilterSet):
    class Meta:
        model = Materiel
        fields =['RefDirection','RefTypeMateriel','RefMarque','Statut']
        
