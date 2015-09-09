# 1. Use condiciones para determinar si una palabra es palindromo
palabra = gets.chomp
if palabra == palabra.reverse
	puts palabra << ' es palindromo'
else
	puts palabra << ' NO es palindromo'
end

# 2. Dado las edades [23, 12, 19, 15] obtenga aquellos mayores de edad
[23, 12, 19, 15].each{ |n| puts n if n >= 18 } # para imprimir
mayores_edad = [23, 12, 19, 15].select{ |n| n >= 18 } # para asignar a una variable

# 3. Dado el arreglo ['java', 'php', 'ruby'] convierta los elementos en mayusculas
lenguajes = ['java', 'php', 'ruby'].map{ |lenguaje| lenguaje.upcase}

# 4. Dado el arreglo [5, 3, 9, 15] obtenga la suma total
suma = [5, 3, 9, 15].inject{ |suma, n| suma += n }

# 5. Cree un hash con los niveles y conocimientos que tenga
lenguajes = {
	basic: ['php', 'perl'],
	intermediate: ['java']
}

# Agregue un nuevo conocimiento
lenguajes[:advanced] = ['ruby']
lenguajes.merge!( { :advanced => ['ruby'] })