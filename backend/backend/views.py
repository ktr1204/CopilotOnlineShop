# backend/views.py
from django.http import JsonResponse

def ProductList(request):
    return JsonResponse({"products": []})
