from django.forms import ModelForm
from .models import Ville


class VilleForm(ModelForm):
    class Meta:
        model = Ville
        fields = '__all__'