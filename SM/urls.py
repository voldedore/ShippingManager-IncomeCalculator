from django.conf.urls import patterns, include, url

#from django.contrib import admin
#admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'SM.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    #url(r'^admin/', include(admin.site.urls)),
    url(r'^[Ss][Hh][Ii][Pp][Pp][Ii][Nn][Gg][Mm][Aa][Nn][Aa][Gg][Ee][Rr]/', include('SM.incomeCalc.urls')),
)
