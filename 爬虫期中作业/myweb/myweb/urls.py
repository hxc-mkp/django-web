from django.contrib import admin
from django.conf.urls import url
from django.urls import path
from web import views


urlpatterns = [
    url('^table/$',views.table),
    url('^news/$',views.news),
    path('admin/', admin.site.urls),

]
