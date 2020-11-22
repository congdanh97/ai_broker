from django.contrib import admin
from django.utils import timezone
from .models import Cat
# Register your models here.


class CatAdmin(admin.ModelAdmin):

    list_display = ('name', 'count')

    def __unicode__(self):
            return self.name

admin.site.register(Cat, CatAdmin)