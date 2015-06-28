# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('incomeCalc', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='boat',
            name='Cost',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='boat',
            name='Crew',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='boat',
            name='Fuel',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='boat',
            name='Size',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='boat',
            name='Speed',
            field=models.IntegerField(default=0),
        ),
    ]
