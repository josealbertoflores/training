module CareerPath
  def siguiente_nivel(nivel_actual)
    case nivel_actual
      when :practicante_se then :se1
      when :se1 then :se2
      when :se2 then :se3
      when :se3 then :se_senior
      when :practicante_qa then :qa1
      when :qa1 then :qa2
      when :qa2 then :qa_senior
      else "Siguiente nivel invalido"
    end
  end
end