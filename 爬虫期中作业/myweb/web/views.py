from django.shortcuts import render
from django.db import connection

def table(request):

    cursor=connection.cursor()
    cursor.execute("SELECT * FROM web_movie")
    all=cursor.fetchall()
    return render(request,'table.html',{'all':all})
def news(request):
    cursor=connection.cursor()
    cursor.execute("SELECT * FROM web_phone")
    txt=cursor.fetchall()
    return render(request,'news.html',{'txt':txt})