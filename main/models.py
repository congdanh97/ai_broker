from __future__ import unicode_literals
from django.db import models

# Create your models here.

class Main(models.Model):
    name = models.CharField(max_length=255)
    about = models.TextField()  # this is for footer  (default="-")
    abouttxt = models.TextField(default="")    ## About page text
    fb = models.CharField(default="-", max_length=255)
    tw = models.CharField(default="-", max_length=255)
    yt = models.CharField(default="-", max_length=255)
    tell = models.CharField(default="-", max_length=255)
    link = models.CharField(default="-", max_length=255)

    set_name = models.CharField(default="-", max_length=255)

 ## for header and footer logo images start
    picurl = models.TextField(default="")
    picname = models.TextField(default="")

    picurl2 = models.TextField(default="")
    picname2 = models.TextField(default="")
 ## for header and footer logo images end

        
    def __str__(self):
        return self.set_name + " | " + str(self.pk)