#require 'date'

class Persona
  attr_accessor :nombre
  attr_accessor :apellido
  attr_accessor :fecha_nacimiento

  # constructor
  def initialize(nombre='Juan', apellido='Perez')
    @nombre = nombre
	  @apellido = apellido
  end

  def to_s
    "Persona: #{nombre_completo}"
  end

  protected

  def hash
    nombre_completo.hash
  end

  private

  def nombre_completo
    "#{@nombre} #{@apellido}"
  end
end

class SoftwareEngineer < Persona
  def to_s
    # metodos privados no pueden ser llamados explicitamente
    # metodos protegidos SI pueden ser llamados explicitamente
    #"Software Engineer: #{self.nombre_completo}, hash: #{self.hash}"

    # tanto metodos privados como protegidos pueden ser llamados implicitamente
    "Software Engineer: #{nombre_completo}, hash: #{hash}"
    #"Software Engineer: #{@nombre} #{@apellido}, hash: #{hash}"
  end
end

jose = Persona.new('Jose','Flores')
#puts jose.to_s
#puts jose.nombre_completo # error de acceso
#puts jose.hash # error de acceso

se = SoftwareEngineer.new('Jose', 'Flores')
puts se.to_s
