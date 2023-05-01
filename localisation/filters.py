import django_filters
from .models import Localisation

class LocalisationFiltre(django_filters.FilterSet):
    class Meta:
        model = Localisation
        fields =['LibLocalisation']