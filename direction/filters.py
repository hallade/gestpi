import django_filters
from .models import Direction


class DirectionFiltre(django_filters.FilterSet):
    class Meta:
        model = Direction
        fields =['RefVille','RefLocalisation','RefCategorie','LibAbbDirection']
        


