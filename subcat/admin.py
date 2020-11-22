from django.contrib import admin
from .models import SubCat
# Register your models here.

class SubCatAdmin(admin.ModelAdmin):

    list_display = [field.name for field in SubCat._meta.get_fields()]
    list_display_links = [field.name for field in SubCat._meta.fields if field.editable]

    def __unicode__(self):
            return self.name,self.catname

admin.site.register(SubCat, SubCatAdmin)
