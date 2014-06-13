#!/usr/bin/env python
#coding:utf-8

import json
import requests
from bottle import route, get, post, run, template, debug, error, request, static_file, default_app, TEMPLATE_PATH
import os
from lxml import etree

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static')

@error(404)
def error404(error):
    return template('error')

@route('/')
def search():
    return template('inicio')

@route('/artistas')
def search():
    return template('buscarartista')

@route('/letras')
def search():
    return template('buscarletras')

@post('/resultado')
def nombre():
    global artist
    artist = request.forms.get("artista")
    r = requests.get('http://api.deezer.com/search/album', params={'q':'%s'% artist})
    datos=json.loads(r.text)
    return template('results', data=datos,busqueda=artist)

@post('/letra')
def letra():
    artist2 = request.forms.get("artista2")
    cancion = request.forms.get("cancion")
    dicc_peticion = {'artist':artist2,'song':cancion,'fmt':'xml'}
    peticion = requests.get('http://lyrics.wikia.com/api.php?', params=dicc_peticion)
    datos1 = etree.fromstring(peticion.text.encode("utf-8"))
    url = datos1.find("url")
    lyrics = datos1.find("lyrics")
    song = datos1.find("song")	
    return template('letra', url=url.text,lyrics=lyrics.text,song=song.text)

debug='TRUE'
run(host='localhost', port=8080)




