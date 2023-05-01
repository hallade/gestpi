from django.forms import ModelForm
from .models import TypeMateriel


class TypeMaterielForm(ModelForm):
    class Meta:
        model = TypeMateriel
        fields = '__all__'