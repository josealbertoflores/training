def lanzar_excepcion
  puts 'Estoy antes del raise'
  raise 'Se ha producido un error' # lanza una excepción con el mensaje entre ''
  puts 'Estoy despues del raise'
end

def raise_and_rescue  
  begin  
    puts 'Estoy antes del raise'
    raise 'Un error ha ocurrido' # simulamos un error
    puts 'Estoy después del raise' 
  rescue  
    puts 'Estoy rescatado del error.'  
  end  
  puts 'Estoy después del bloque'
end

def rescue_and_ensure
  file = open("/tmp/some_file", "w")
  begin
    # ... escribir/procesar el archivo ...
  rescue
    # ... manejar la excepcion ...
  ensure
    file.close   # ... siempre se ejecutará.
  end
end

def dividir(a, b)
  begin
    a / b
  rescue TypeError => e
    puts "I am rescuing from a TypeError"
    puts e
    puts e.class
    puts e.backtrace
  rescue ZeroDivisionError => e
    puts "I am rescuing from a ZeroDivisionError"
    puts e
    puts e.class
    puts e.backtrace
  ensure
    puts "BLAH BLAH BLAH"
  end
end
 
#lanzar_excepcion
#raise_and_rescue
#rescue_and_ensure

dividir(4, 2)
dividir(4, 'hola')
dividir(4, 0)
