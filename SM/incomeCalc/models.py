from django.db import models

# Create your models here.

class BoatType(models.Model):
    Name = models.CharField(max_length=30)
    def __str__(self):
        return self.Name

class Boat(models.Model):
    Name = models.CharField(max_length=50)
    Cost = models.IntegerField(default=0)
    Size = models.IntegerField(default=0)
    Speed = models.IntegerField(default=0)
    Fuel = models.IntegerField(default=0)
    Crew = models.IntegerField(default=0)
    Type = models.ForeignKey('BoatType')
    def __str__(self):
        return self.Name

class LoadBalance(models.Model):
    loadBalance = models.CharField(max_length=4)
    oilConsum = models.CharField(max_length=4)
    cargoConsum = models.CharField(max_length=4)
    def __str__(self):
        return self.loadBalance