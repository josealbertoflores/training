#=== RANGOS ===
puts ('a'...'m').include? 'm' # false
puts ('a'...'m').include? 'k' # true
puts ('a'...'m').include? 'z' # false

#=== ARREGLOS ===
arreglo = Array.new
arreglo = [32, 45, 43]
arreglo = [32, 'hola', [4, 5], 4.6]

lenguajes = ['java', 'php', 'ruby']
lenguajes = %W{java php ruby}
ingenieros = %W{Jorge, Roberto, Nelly, Oscar}

#=== HASHES ===
# 1ra forma de crearlos
hash = Hash.new
hash[:key1] = 'valor 1'
hash[:key2] = 'valor 2'

# 2da forma de crearlos
hash = {
	:key1 => 'valor 1',
	:key2 => 'valor 2'
}

# 3ra forma de crearlos
hash = {
	key1: 'valor 1',
	key2: 'valor 2'
}

# Ejemplo de hash
ingenieros = {
	'Cesar Ynga': 'android',
	'Edson Chavez': 'java',
	'Camilo Manrique': 'java'
}

# Recorriendo un hash
ingenieros.each do |ingeniero, lenguaje|
	puts ingeniero.to_s + ' sabe ' + lenguaje.to_s
end
