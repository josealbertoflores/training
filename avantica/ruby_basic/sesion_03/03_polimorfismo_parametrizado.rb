# Ruby no requiere polimorfismo por tipos de parametros
# ya que tiene tipado dinamico

def mostrar_longitud(param)
  if param.respond_to? :length
    param.length
  else
    nil
  end 
end

puts mostrar_longitud('Hola')
puts mostrar_longitud([1,2,3,4,5,6,7])
puts mostrar_longitud({key1: 'valor1', key2: 'valor2'})
puts mostrar_longitud(20)


# Ruby no posee polimorfismo por nro de parametros
# el ultimo metodo sobreescribe al anterior si tienen nombres iguales

def sumar(a, b)
  a + b
end

def sumar(a, b, c)
  a + b + c
end

def sumar(*args)
  args.inject{ |sum, n| sum += n }
end

puts sumar(5, 3, 4, 8)
puts sumar(2, 56)
puts sumar('32', '23')
