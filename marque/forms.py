from django.forms import ModelForm
from .models import Marque


class MarqueForm(ModelForm):
    class Meta:
        model = Marque
        fields = '__all__'