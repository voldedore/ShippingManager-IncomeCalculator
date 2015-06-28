from django.conf.urls import patterns, url


urlpatterns = patterns('SM.incomeCalc.views',

    url(r'^[Ii][Nn][Cc][Oo][Mm][Ee][Cc][Aa][Ll][Cc][Uu][Ll][Aa][Tt][Oo][Rr]$', 'home'),
    #url(r'^date$', 'date_actuelle'),
    #url(r'^addition/(?P<nombre1>\d+)/(?P<nombre2>\d+)/$', 'addition'),
    url(r'^testtt$','test'),

)