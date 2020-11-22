from __future__ import unicode_literals
from django.utils.translation import ugettext_lazy as _
from django.utils.translation import ugettext
from django.utils.text import slugify
from datetime import date
from django.db import models

# Create your models here.

data = {
    'tc':'Tài Chính',
    'dn':'Doanh Nghiệp '

}

class Cat(models.Model):
    name = models.CharField(max_length=255, verbose_name=_('Thể Loại'),default=data['dn'],unique=True, blank=False, editable=True)
    count = models.IntegerField(default=0,verbose_name=_('Đếm'))  # To count how many news contains in an one category

    class Meta:
        get_latest_by = ['-priority', 'order_date']
        verbose_name = _('Bảng Thể Loại')
        verbose_name_plural = _('Bảng Thể Loại')
        ordering = ['name']

    
    def __str__(self):
        return self.name