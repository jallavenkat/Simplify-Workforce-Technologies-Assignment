from django.db import models
from django_mysql.models import Model, JSONField

class Team(models.Model):
    team_name = models.CharField(max_length=100, db_column='team_name')
    team_logo = models.ImageField(upload_to='team/', db_column='team_logo', blank=True)
    club_state = models.CharField(max_length=50, db_column='club_state')
    def __str__(self):
        return self.team_name
    class Meta:
        db_table='teams'

class Players(models.Model):
    team_id = models.ForeignKey('Team', on_delete=models.CASCADE, db_column='team_id')
    firstname = models.CharField(max_length=50, db_column='firstname')
    lastname = models.CharField(max_length=50, db_column='lastname')
    image_uri = models.ImageField(upload_to='player/', db_column='image_uri')
    jersey_no = models.IntegerField(db_column='jersey_no')
    country = models.CharField(max_length=50, db_column='country')
    player_history = models.TextField(db_column='player_history', blank=True, editable=False)
    class Meta:
        db_table='players'

class PlayerHistory(models.Model):
    player_id = models.ForeignKey('Players', on_delete=models.CASCADE, db_column='player_id')
    matches = models.IntegerField(db_column='matches')
    runs = models.IntegerField(db_column='runs')
    highest_score = models.IntegerField(db_column='highest_score')
    fifties = models.IntegerField(db_column='fifties')
    hundreds = models.IntegerField(db_column='hundreds')
    class Meta:
        db_table='player_history'

class Matches(models.Model):
    team_a = models.ForeignKey('Team', on_delete=models.CASCADE, db_column='team_a', related_name='team_a')
    team_b = models.ForeignKey('Team', on_delete=models.CASCADE, db_column='team_b', related_name='team_b')
    match_winner = models.ForeignKey('Team', on_delete=models.CASCADE, db_column='match_winner', related_name='match_winner', null=True, default=0, )

    class Meta:
        db_table='matches'

class PointsTable(models.Model):
    team_id = models.ForeignKey('Team', on_delete=models.CASCADE, db_column='team_id')
    team_points = models.IntegerField(db_column='team_points')
    class Meta:
        db_table='pointstable'

# Create your models here.
