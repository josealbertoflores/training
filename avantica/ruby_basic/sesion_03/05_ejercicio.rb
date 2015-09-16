class Poligono
  attr_reader :nro_lados
  def area
    puts "Si ves esto, algo no esta bien"
  end
end

class Cuadrado < Poligono
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
    @nro_lados = 4
  end
  def area
    @lado * @lado
  end
end

class Triangulo < Poligono
  attr_accessor :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
    @nro_lados = 3
  end
  def area
    (@base * @altura) / 2
  end
end

class Rectangulo < Poligono
  attr_accessor :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
    @nro_lados = 4
  end
  def area
    @base * @altura
  end
end

r = Rectangulo.new(3,2)
c = Cuadrado.new(2)
t = Triangulo.new(3,2)

[r, c, t].each do |figura|
  puts "El area del #{figura.class.name.downcase} es #{figura.area} y tienen #{figura.nro_lados} lados"
end