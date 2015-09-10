#=== CLASES ===
class Persona
	@nombre
	@apellido
	@edad

	# constructor
	def initialize(nombre='Juan', apellido='Perez')
		@nombre = nombre
		@apellido = apellido
		@edad = 0
	end

	# metodo booleano
	def mayor_edad?
		@edad >= 18
	end

	# asignacion paralela
	def obtener_nombre_apellido
		[@nombre, @apellido]
	end

	# aqui cae cualquier llamada a metodo que no exista
	def method_missing(method_name)
		method_name.to_s << '? Yo no se hacer eso'
	end

end

jose = Persona.new('Jose', 'Flores')

# metodo booleano
puts "Es mayor de edad? #{ jose.mayor_edad? }"

# aisgnacion paralela
nombre, apellido = jose.obtener_nombre_apellido
puts nombre << ' ' << apellido

# Metodos de la clase
puts jose.class
puts jose.respond_to?('obtener_nombre_apellido')
puts jose.correr