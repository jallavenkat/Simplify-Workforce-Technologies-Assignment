from django import forms
from . models import *
class CreateTeam(forms.ModelForm):
    class Meta:
        model = Team
        fields = ['team_name', 'team_logo', 'club_state']
