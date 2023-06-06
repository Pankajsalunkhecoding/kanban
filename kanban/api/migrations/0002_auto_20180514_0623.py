# Generated by Django 2.0.5 on 2018-05-14 06:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='card',
            name='position_id',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='column',
            name='position_id',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
        migrations.AlterUniqueTogether(
            name='card',
            unique_together={('column', 'position_id')},
        ),
        migrations.AlterUniqueTogether(
            name='column',
            unique_together={('board', 'position_id')},
        ),
    ]
