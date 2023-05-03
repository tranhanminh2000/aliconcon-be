from django.urls import path
from .views import LoginGoogleView

# api/v1/auth/login/google/
urlpatterns = [
    path('auth/login/google/', LoginGoogleView.as_view(), name='auth-login-google'),
]