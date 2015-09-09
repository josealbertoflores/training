require 'json'

archivo = File.read('homework.json')
examen = JSON.parse(archivo);
aciertos = 0