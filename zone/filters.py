import django_filters
from .models import Zone

class ZoneFiltre(django_filters.FilterSet):
    class Meta:
        model = Zone
        fields =['LibZone']