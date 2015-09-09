puts 'Hola mundo!'

# === COMENTARIOS ===
# Un comentario puede ir en una sola linea
puts 'Me gusta ruby' # Tambien puede ser parte de una linea
=begin
O puede tener muchas lineas
Y estás serán ignoradas por el programa.
=end
puts 'No pasa nada!'

# === STRINGS Y SECUENCIAS DE ESCAPE ===
puts 'Linea normal'
puts "Primera linea\nSegunda linea"
puts "\tLinea con tab"
puts "Ejemplo con comillas 'simples'"
puts "Ejemplo con comillas \"dobles\""
puts """
Si el texto que mostrarás inicia con 3 comillas
puedes escribir muchas lineas sin  necesidad del '\\n'
"""

# === OPERADORES ===
puts 40 + 20 # => 60 (suma)
puts 38 - 12 # => 26 (resta)
puts 21 * 14 # => 294 (multiplicacion)
puts 35 / 2 # => 17 (division con resultado entero)
puts 35.0 / 2 # => 17.5 (division con resultado decimal)
puts 3**2 # => 9 (potencia)
puts 14 % 5 # => 4 (residuo)

# === STRING Y METODOS ===
puts 'Hola ' + 'mundo' # => Hola mundo
puts 'mun' << 'do' # => mundo
puts 'mundo'.concat('!') # => mundo!
puts 'mundo!'.prepend('Hola ')# => Hola mundo!
puts 'hOlA mUndO'.capitalize # => Hola mundo!
puts 'hOlA mUndO'.upcase # => HOLA MUNDO
puts 'hOlA mUndO'.downcase # => hola mundo
puts 'hola mundo'.reverse # => odnum aloh
puts 'hola mundo'.length # => 10
puts 'hola mundo'.delete 'aeiou' # => hl mnd
puts 'hola mundo'.include? 'h' # => true
puts 'hola mundo'.gsub 'o', '*' # => h*la mund*

# === CONVERSIONES ===
puts 'hola ' + 2.to_s + ' veces' # A cadena
puts 4 + '4'.to_i # A entero
puts 50.to_f # A float

# === ENTRADA DE DATOS ===
puts 'Hola, ¿cuál es tu nombre?'
name = gets.chomp
puts 'Hola ' + name + ', encantado de conocerte.'