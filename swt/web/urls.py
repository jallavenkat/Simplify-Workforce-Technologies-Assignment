from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.Home.as_view(), name='home'),
    path('teams', views.Home.teams, name='teams'),
    path('teamDetails/<int:teamid>', views.Home.teamDetails, name='team-details'),
    path('playerDetails/<int:playerid>', views.Home.playerDetails, name='player-details'),
    path('matches', views.Home.matches, name='matches'),
    path('players', views.Home.players, name='players'),
]+static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)