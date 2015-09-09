require 'json'

archivo = File.read('homework.json')
examen = JSON.parse(archivo);
aciertos = 0

examen.each do |item|
  puts "#{item['nro']}. #{item['pregunta']}"
  item['opciones'].each do |key, value|
    puts "   #{key}) #{value}"
  end
  print '   Ingrese su respuesta (a,b,c,d): '
  respuesta = gets.chomp.downcase
  if item['respuesta'] == respuesta
    puts '   Respuesta correcta!'
    aciertos += 1
  else
    puts "   Respuesta incorrecta, la respuesta correcta era la alternativa #{item['respuesta']}"
  end
end

puts ''
score = aciertos.to_f / examen.length * 100
puts "Respuestas correctas   : #{aciertos}"
puts "Respuestas incorrectas : #{examen.length - aciertos}"
puts "Score obtenido         : #{score.to_i}%"
puts 'Resultado              : ' << (score >= 80 ? 'FELICITACIONES! Pasaste el examen!' : 'Necesitas estudiar mas')
