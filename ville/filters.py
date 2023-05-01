import django_filters
from .models import Ville

class VilleFiltre(django_filters.FilterSet):
    class Meta:
        model = Ville
        fields =['LibVille','RefRegion']
        
