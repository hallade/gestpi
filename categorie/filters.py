import django_filters
from .models import Categorie

class CategorieFiltre(django_filters.FilterSet):
    class Meta:
        model = Categorie
        fields =['LibCategorie']