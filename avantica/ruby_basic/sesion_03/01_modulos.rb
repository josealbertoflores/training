# Los modulos sirven para agrupar clases, metodos y constantes
module Avantica
  module Engineering
  	FIRMA_CORREO_EN = 'This communication may contain information that is legally privileged, confidential or exempt from disclosure. If you are not the intended recipient, please note that any dissemination, distribution, or copying of this communication is strictly prohibited. Anyone who receives this message by error should notify the sender immediately by telephone or by return e-mail and delete it from their computer. Thank you.'
  	FIRMA_CORREO_ES = 'Esta comunicación puede contener información que sea legalmente privilegiada, confidencial o que no debe ser revelada. Si usted no es el destinatario intencionado, tenga en cuenta que cualquier divulgación, distribución o copia de esta comunicación está estrictamente prohibida. Toda persona que reciba este mensaje por error debe notificar al remitente inmediatamente por teléfono o por correo electrónico y eliminarla de su computador. Muchas gracias.'

  	class SoftwareEngineer
	    attr_accessor :nombre
	    attr_accessor :apellido
	
  	  def initialize(nombre='Juan', apellido='Perez')
        @nombre = nombre
        @apellido = apellido
  	  end
    end

    def self.firma_correo
      %Q{
#{FIRMA_CORREO_EN}
#{FIRMA_CORREO_ES}
      }
    end
  end
end

se = Avantica::Engineering::SoftwareEngineer.new('Jose', 'Flores') # clase dentro de un modulo
puts Avantica::Engineering::firma_correo      # metodo dentro de un modulo
puts Avantica::Engineering::FIRMA_CORREO_EN   # constante dentro de un modulo

