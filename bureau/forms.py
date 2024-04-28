from django.forms import ModelForm
from .models import Bureau


class BureauForm(ModelForm):
    class Meta:
        model = Bureau
        fields = '__all__'
     