from django.forms import ModelForm
from .models import Direction
from materiel.forms import MaterielForm


class DirectionForm(ModelForm):
    class Meta:
        model = Direction
        fields = '__all__'