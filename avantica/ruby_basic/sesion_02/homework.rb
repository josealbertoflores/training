require 'json'

# modulo de utilidades de examen
module ExamenUtilidades  

  def mostrar_pregunta(item)
    puts "#{item['nro']}. #{item['pregunta']}"
    item['opciones'].each do |key, value|
      puts "   #{key}) #{value}"
    end    
    print '   Ingrese su respuesta (a,b,c,d): '
    respuesta = gets.chomp.downcase

    acierto = item['respuesta'] == respuesta
    puts acierto ? '   Respuesta correcta!' : "   Respuesta incorrecta, la respuesta correcta era la alternativa #{item['respuesta']}"
    acierto
  end

  def mostrar_resultados(aciertos, total_preguntas)
    score = aciertos.to_f / total_preguntas * 100

    puts "Respuestas correctas   : #{aciertos}"
    puts "Respuestas incorrectas : #{total_preguntas - aciertos}"
    puts "Score obtenido         : #{score.to_i}%"
    puts 'Resultado              : ' << (score >= 80 ? 'FELICITACIONES! Pasaste el examen!' : 'Necesitas estudiar mas')
    puts "\n"
  end
end


class SoftwareEngineer
  attr_accessor :nombre
  attr_accessor :apellido
  
  include ExamenUtilidades

  def initialize(nombre='Juan', apellido='Perez')
    @nombre = nombre
    @apellido = apellido
  end

  def tomar_examen
    archivo = File.read('homework.json')
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

se = SoftwareEngineer.new('Jose', 'Flores')
se.tomar_examen
