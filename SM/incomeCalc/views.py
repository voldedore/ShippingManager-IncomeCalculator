from django.shortcuts import render
from datetime import datetime

from .models import BoatType
from .models import Boat
from .models import LoadBalance



def home(request):
    bts = BoatType.objects.all()
    boats = Boat.objects.all()
    loadBalances = LoadBalance.objects.all()

    return render(request, 'home.html', {'bts': bts, 'boats': boats, 'lBs': loadBalances, 'range1_100': range(101), 'range35_115': range(116) })


def test(request):
    bts = BoatType.objects.all()
    boats = Boat.objects.all()
    loadBalances = LoadBalance.objects.all()

    return render(request, 'test.html', {'bts': bts, 'boats': boats, 'lBs': loadBalances, 'range1_100': range(101), 'range35_115': range(116) })

def date_actuelle(request):

    return render(request, 'date.html', {'date': datetime.now()})

def addition(request, nombre1, nombre2):

    total = int(nombre1) + int(nombre2)


    # Retourne nombre1, nombre2 et la somme des deux au tpl

    return render(request, 'addition.html', locals())