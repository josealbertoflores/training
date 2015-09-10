#=== ALCANCE DE VARIABLES ===

$contador = 0 # Esta es una variable global

class Persona
	attr_accessor :nombre  # atributo de lectura y escritura
	attr_reader :apellido  # atributo de solo lectura
	attr_writer :edad 	   # atributo de solo escritura

	@@personas = 0		   # Esta es una variable de clase

	def initialize(nombre='Juan', apellido='Perez')
		@nombre = nombre
		@apellido = apellido
		@edad = 0
		@@personas += 1
		$contador +=1
	end

	def obtener_nombre_apellido
		[@nombre, @apellido]
	end

	def nro_personas
		mensaje = 'Nro de personas: ' # mensaje es una variable local, solo puede ser usada dentro del metodo
		mensaje << @@personas.to_s
	end

end

fulano = Persona.new()					# Initialize tomara los valores por defecto: Juan, Perez
jose = Persona.new('Jose', 'Flores')	# Initialize tomara los valores pasados como parametro
puts jose.nro_personas.inspect			# 2 = @@personas funciona a traves de todas las instancias
puts $contador							# 2 = $contador funciona incluso fuera y dentro de la clase/metodo
