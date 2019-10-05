# Generated by Django 2.2 on 2019-10-05 16:34

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Team',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('team_name', models.CharField(db_column='team_name', max_length=100)),
                ('team_logo', models.ImageField(blank=True, db_column='team_logo', upload_to='team/')),
                ('club_state', models.CharField(db_column='club_state', max_length=50)),
            ],
            options={
                'db_table': 'teams',
            },
        ),
        migrations.CreateModel(
            name='PointsTable',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('team_points', models.IntegerField(db_column='team_points')),
                ('team_id', models.ForeignKey(db_column='team_id', on_delete=django.db.models.deletion.CASCADE, to='web.Team')),
            ],
            options={
                'db_table': 'pointstable',
            },
        ),
        migrations.CreateModel(
            name='Players',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('firstname', models.CharField(db_column='firstname', max_length=50)),
                ('lastname', models.CharField(db_column='lastname', max_length=50)),
                ('image_uri', models.ImageField(db_column='image_uri', upload_to='player/')),
                ('jersey_no', models.IntegerField(db_column='jersey_no')),
                ('country', models.CharField(db_column='country', max_length=50)),
                ('player_history', models.TextField(blank=True, db_column='player_history', editable=False)),
                ('team_id', models.ForeignKey(db_column='team_id', on_delete=django.db.models.deletion.CASCADE, to='web.Team')),
            ],
            options={
                'db_table': 'players',
            },
        ),
        migrations.CreateModel(
            name='PlayerHistory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('matches', models.IntegerField(db_column='matches')),
                ('runs', models.IntegerField(db_column='runs')),
                ('highest_score', models.IntegerField(db_column='highest_score')),
                ('fifties', models.IntegerField(db_column='fifties')),
                ('hundreds', models.IntegerField(db_column='hundreds')),
                ('player_id', models.ForeignKey(db_column='player_id', on_delete=django.db.models.deletion.CASCADE, to='web.Players')),
            ],
            options={
                'db_table': 'player_history',
            },
        ),
        migrations.CreateModel(
            name='Matches',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('match_winner', models.ForeignKey(db_column='match_winner', default=0, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='match_winner', to='web.Team')),
                ('team_a', models.ForeignKey(db_column='team_a', on_delete=django.db.models.deletion.CASCADE, related_name='team_a', to='web.Team')),
                ('team_b', models.ForeignKey(db_column='team_b', on_delete=django.db.models.deletion.CASCADE, related_name='team_b', to='web.Team')),
            ],
            options={
                'db_table': 'matches',
            },
        ),
    ]
