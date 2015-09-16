require 'json'
require_relative 'evaluacion'
require_relative 'career_path'

class Persona
  attr_accessor :nombre
  attr_accessor :apellido

  # constructor
  def initialize(nombre='Juan', apellido='Perez')
    @nombre = nombre
    @apellido = apellido
  end

  include Evaluacion
  include CareerPath

  def tomar_examen
    archivo = File.read('evaluacion.json')
    examen = JSON.parse(archivo)
    aciertos = 0

    examen.each do |item|
      acierto = mostrar_pregunta(item)
      aciertos +=1 if acierto
    end

    puts "Resultados de #{@nombre} #{@apellido}"
    mostrar_resultados(aciertos, examen.length)
  end

end