# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('incomeCalc', '0002_auto_20150620_1650'),
    ]

    operations = [
        migrations.CreateModel(
            name='LoadBalance',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True, auto_created=True, verbose_name='ID')),
                ('loadBalance', models.CharField(max_length=4)),
                ('oilConsum', models.CharField(max_length=4)),
                ('cargoConsum', models.CharField(max_length=4)),
            ],
        ),
    ]
