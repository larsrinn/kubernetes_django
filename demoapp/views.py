from django.http import JsonResponse
from django.shortcuts import render

# Create your views here.


def healthcheck(request):
    return JsonResponse(data={"status": "ok"}, status=200)
