from django.forms import ModelForm
from .models import Materiel


class MaterielForm(ModelForm):
    class Meta:
        model = Materiel
        fields = '__all__'