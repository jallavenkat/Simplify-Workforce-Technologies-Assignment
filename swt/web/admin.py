from django.contrib import admin
from django import forms
from .models import *

from django.utils.html import format_html

admin.site.site_header = 'SWT Dashboard'

class TeamAdmin(admin.ModelAdmin):
    list_display = ['team_name', 'teamlogo', 'club_state']

    def teamlogo(self,obj):
        return format_html('<img src="{}" width="100px" />'.format(obj.team_logo.url))

class PlayerHistoryInline(admin.StackedInline):
    model = PlayerHistory

class PlayersAdmin(admin.ModelAdmin):
    list_display = ['firstname', 'lastname', 'imageuri', 'jersey_no', 'country', 'team']
    inlines = (PlayerHistoryInline, )
    def imageuri(self,obj):
        return format_html('<img src="{}" width="100px" />'.format(obj.image_uri.url))

    def team(self,obj):
        return obj.team_id.team_name

class TeamChoiceField(forms.ModelChoiceField):
    def label_from_instance(self, obj):
        return "Team: {}".format(obj.team_name)

class MatchesAdmin(admin.ModelAdmin):
    list_display = ['team_a','team_b', 'match_winner']

class PointsTableAdmin(admin.ModelAdmin):
    list_display = ['team_id', 'team_points']

admin.site.register(Team,TeamAdmin)
admin.site.register(Players, PlayersAdmin)
admin.site.register(Matches, MatchesAdmin)
admin.site.register(PointsTable, PointsTableAdmin)

# Register your models here.
