from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from . models import Team, Matches, PointsTable, Players, PlayerHistory

class Home(View):
    def get(self, request):
        teams = Team.objects.all()[:4]
        matches = Matches.objects.all()[:3]
        points = PointsTable.objects.all()
        context = {"teams":teams, "matches":matches, "points":points}
        return render(request, 'index.html',context)

    def teams(request):
        teams = Team.objects.all()
        points = PointsTable.objects.all()
        context = {"teams": teams, "points": points, "menu":'teams'}
        return render(request, 'teams.html', context)

    def teamDetails(request, teamid):
        team = Team.objects.get(id=teamid)
        players = Players.objects.filter(team_id=teamid)
        points = PointsTable.objects.all()
        context = {"team":team, "players":players, "points":points, "menu":'teams'}
        return render(request, 'team-details.html', context)

    def playerDetails(request, playerid):
        try:
            player = Players.objects.get(id=playerid)
            playhistory = PlayerHistory.objects.get(player_id=playerid)
            points = PointsTable.objects.all()
            context = {"player": player, "points": points, "playerhistory": playhistory}
            return render(request, 'player-details.html', context)
        except:
            return HttpResponse("Sorry Player Data not found.")

    def matches(request):
        matches = Matches.objects.all()
        points = PointsTable.objects.all()
        context = {"matches":matches, "points":points, "menu":'matches'}
        return render(request, 'matches.html', context)

    def players(request):
        players = Players.objects.all()
        points = PointsTable.objects.all()
        context = {"players":players, "points":points, "menu":'players'}
        return render(request, 'players.html', context)

# Create your views here.
