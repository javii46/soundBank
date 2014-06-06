#!/usr/bin/env python
#coding:utf-8

import json
import requests
from bottle import route, get, post, run, template, debug, error, request, static_file, default_app, TEMPLATE_PATH
import os

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static')

@error(404)
def error404(error):
    return template('error')

@route('/')
def search():
    return template('inicio')

@post('/resultado')
def nombre():
    global artist
    artist = request.forms.get("artista")
    r = requests.get('http://api.deezer.com/search/album', params={'q':'%s'% artist})
    datos=json.loads(r.text)
    return template('results', data=datos)

debug='TRUE'
run(host='localhost', port=8080)


