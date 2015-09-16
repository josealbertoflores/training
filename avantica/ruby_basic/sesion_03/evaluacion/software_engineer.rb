require_relative 'persona'

class SoftwareEngineer < Persona
  attr_accessor :anios_experiencia
  attr_accessor :anios_experiencia

  def initialize(nombre='Software', apellido='Engineer')
    super
  end

end
