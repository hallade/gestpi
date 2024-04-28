# Generated by Django 4.1.7 on 2023-04-26 05:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('categorie', '0001_initial'),
        ('ville', '0001_initial'),
        ('localisation', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Direction',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('LibDirection', models.CharField(max_length=100, null=True, unique=True)),
                ('LibAbbDirection', models.CharField(max_length=15, unique=True)),
                ('Responsable', models.CharField(max_length=25)),
                ('Telephone', models.CharField(max_length=10, null=True)),
                ('Email', models.EmailField(max_length=254)),
                ('Detail', models.CharField(max_length=100, null=True)),
                ('RefCategorie', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='categorie.categorie')),
                ('RefLocalisation', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='localisation.localisation')),
                ('RefVille', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='ville.ville')),
            ],
        ),
    ]
