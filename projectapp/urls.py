from django.template.defaulttags import url
from django.urls import path

from profileapp.forms import ProfileCreationForm
from profileapp.views import ProfileCreateView, ProfileUpdateView
from projectapp.views import ProjectCreateView, ProjectListView, ProjectDetailView

app_name = 'projectapp'

urlpatterns = [
    path('create/', ProjectCreateView.as_view(), name='create'),
    path('detail/<int:pk>', ProjectDetailView.as_view(), name='detail'),
    path('list/', ProjectListView.as_view(), name='list'),
]