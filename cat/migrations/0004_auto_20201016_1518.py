# Generated by Django 3.0.7 on 2020-10-16 08:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cat', '0003_auto_20201016_1517'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cat',
            name='name',
            field=models.CharField(default='Doanh Nghiệp ', max_length=255, unique=True, verbose_name='Thể Loại'),
        ),
    ]
