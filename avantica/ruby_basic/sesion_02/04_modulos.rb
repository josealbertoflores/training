# === MODULOS ===

module PersonaUtilidades
	BASE_MAYORIA_EDAD = 18

	def mayor_edad?(edad)
		edad >= BASE_MAYORIA_EDAD
	end
end


class Persona
	attr_accessor :nombre
	attr_reader :apellido
	attr_writer :edad

	# un modulo se importa en una clase con include
	# el mezclar modulos con clases se le conoce como 'mixin'
	include PersonaUtilidades

	def initialize(nombre='Juan', apellido='Perez')
		@nombre = nombre
		@apellido = apellido
		@edad = 0
	end

	def obtener_nombre_apellido
		[@nombre, @apellido]
	end

	def to_s
		# Usando el metodo mayor_edad? del modulo PersonaUtilidades
		nivel_edad = mayor_edad?(@edad) ? 'mayor' : 'menor'
		puts "Hola soy #{@nombre} y soy #{nivel_edad} de edad"
	end

end

fulano = Persona.new()
jose = Persona.new('Jose', 'Flores')
jose.edad = 29
puts jose.to_s

jose.edad = 13
puts jose.to_s