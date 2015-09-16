module CarrerPath
  def siguiente_nivel(nivel_actual)
  	case nivel_actual
  	  when :se1 then :se2
  	  when :se2 then :se3
  	  when :se2 then :se_senior
  	  when :qa1 then :qa2
  	  when :qa2 then :qa_senior
  	  else :practicante
  	end
  end
end

module Evaluacion
  def ranking(nota)
    case nota
	  when 0..20 then 'Insatisfactorio'
	  when 21..40 then 'Requiere mejora'
	  when 41..60 then 'Desempeño satisfactorio'
	  when 61..80 then 'Sobresaliente'
	  when 81..100 then 'Excede expectativas'
	  else 'Nota invalida'
	end
  end
end

class Persona
  attr_accessor :nombre
  attr_accessor :apellido

  # constructor
  def initialize(nombre='Juan', apellido='Perez')
    @nombre = nombre
	@apellido = apellido
  end
end

class SoftwareEngineer < Persona # herencia simple de Persona
  # herencia multiple usando mixins
  include Evaluacion
  include CarrerPath

  attr_accessor :nombre

  def initialize(nombre='Software', apellido='Engineer')
  	super
  end

end

se = SoftwareEngineer.new('Jose', 'Flores')
puts se.ranking(90)
puts se.siguiente_nivel(:se3)

