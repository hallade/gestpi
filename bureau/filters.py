import django_filters
from .models import Bureau

class BureauFiltre(django_filters.FilterSet):
    class Meta:
        model = Bureau
        fields =['LibBureau']