from django.db import models

# Create your models here.
class movie(models.Model):
    name=models.CharField(max_length=20)
    director=models.CharField(max_length=20)
    Country=models.CharField(max_length=20)
class phone(models.Model):
    title=models.CharField(max_length=20)
    author=models.CharField(max_length=20)
    summary=models.CharField(max_length=100)

