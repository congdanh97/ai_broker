from __future__ import unicode_literals
from django.db import models

# Create your models here.

class SubCat(models.Model):
    name = models.CharField(max_length=255)
    catname = models.CharField(max_length=255)  # main category name
    catid = models.IntegerField()

    def __str__(self):
        return self.name