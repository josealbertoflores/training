require 'json'

# modulo de utilidades de examen
module Evaluacion

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
    score
  end
end
