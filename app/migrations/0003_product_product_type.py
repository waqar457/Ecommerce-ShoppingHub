# Generated by Django 3.2.9 on 2021-11-24 07:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0002_alter_orderplaced_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='product_type',
            field=models.CharField(choices=[('P', 'Pant'), ('E', 'Electronics'), ('T', 'Trouser'), ('TP', 'Trackpant'), ('J', 'Jeans')], default=None, max_length=100),
        ),
    ]
