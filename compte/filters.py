import django_filters
from .models import Compte

class CompteFiltre(django_filters.FilterSet):
    class Meta:
        model = Compte
        fields ='__all__'