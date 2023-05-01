from django.forms import ModelForm
from .models import Etat


class EtatForm(ModelForm):
    class Meta:
        model = Etat
        fields = '__all__'