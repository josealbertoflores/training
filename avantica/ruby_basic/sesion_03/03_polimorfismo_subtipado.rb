class Persona
  attr_accessor :nombre
  attr_accessor :apellido

  # constructor
  def initialize(nombre='Juan', apellido='Perez')
    @nombre = nombre
	  @apellido = apellido
  end

  def to_s
    "Persona: #{@nombre} #{@apellido}"
  end
end

class SoftwareEngineer < Persona

  def initialize(nombre='Software', apellido='Engineer')
  	super
  end

  def to_s
    "Software Engineer: #{@nombre} #{@apellido}"
  end

end

class QAEngineer < Persona

  def initialize(nombre='QA', apellido='Engineer')
    super
  end

  def to_s
    "QA Engineer: #{@nombre} #{@apellido}"
  end

end

se = SoftwareEngineer.new('Jose', 'Flores')
qa = QAEngineer.new('Juan', 'Guibo')

puts se.to_s
puts qa.to_s