from django.forms import ModelForm
from .models import Localisation


class LocalisationForm(ModelForm):
    class Meta:
        model = Localisation
        fields = '__all__'