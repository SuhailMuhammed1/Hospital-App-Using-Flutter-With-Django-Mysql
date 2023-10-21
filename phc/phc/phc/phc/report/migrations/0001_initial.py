# Generated by Django 3.2.18 on 2023-05-18 13:19

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Report',
            fields=[
                ('r_id', models.AutoField(primary_key=True, serialize=False)),
                ('p_id', models.IntegerField()),
                ('lab_id', models.IntegerField()),
                ('records', models.IntegerField()),
            ],
            options={
                'db_table': 'report',
                'managed': False,
            },
        ),
    ]
