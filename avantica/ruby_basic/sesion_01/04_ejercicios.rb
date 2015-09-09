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
