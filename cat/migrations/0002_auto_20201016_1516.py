# Generated by Django 3.0.7 on 2020-10-16 08:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cat', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cat',
            name='count',
            field=models.IntegerField(default=0, verbose_name='Đếm'),
        ),
        migrations.AlterField(
            model_name='cat',
            name='name',
            field=models.CharField(default='Doanh Nghiệp ', max_length=50, unique=True, verbose_name='Thể Loại'),
        ),
    ]
