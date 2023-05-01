import django_filters
from .models import Marque

class MarqueFiltre(django_filters.FilterSet):
    class Meta:
        model = Marque
        fields =['LibMarque']