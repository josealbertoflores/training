require_relative 'persona'

class SoftwareEngineer < Persona
  attr_accessor :anios_experiencia
  attr_accessor :nivel

  def initialize(nombre='Software', apellido='Engineer', nivel=:practicante_se)
    @nivel = nivel
    super(nombre, apellido)
  end

  def tomar_examen
    archivo = File.read('evaluacion_se.json')
    examen = JSON.parse(archivo)
    aciertos = 0

    examen.each do |item|
      acierto = mostrar_pregunta(item)
      aciertos +=1 if acierto
    end

    puts "Resultados de #{@nombre} #{@apellido}"
    score = mostrar_resultados(aciertos, examen.length)
    if score >= 80
      @nivel = siguiente_nivel(@nivel)
      puts "#{@nombre} #{@apellido} ahora es un #{@nivel}"
    end
    puts "\n"
  end

end
