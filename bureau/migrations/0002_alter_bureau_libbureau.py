# Generated by Django 4.1.7 on 2023-05-01 06:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bureau', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bureau',
            name='LibBureau',
            field=models.CharField(max_length=60),
        ),
    ]
