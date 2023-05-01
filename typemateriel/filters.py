import django_filters
from .models import TypeMateriel

class TypeMaterielFiltre(django_filters.FilterSet):
    class Meta:
        model = TypeMateriel
        fields =['LibTypeMateriel']