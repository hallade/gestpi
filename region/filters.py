import django_filters
from .models import Region

class RegionFiltre(django_filters.FilterSet):
    class Meta:
        model = Region
        fields =['RefZone','LibRegion']
        
