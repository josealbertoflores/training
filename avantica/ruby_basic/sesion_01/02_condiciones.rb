# === IF/ELSIF/ELSE ===
print 'Cual es tu edad?:'
edad = gets.chomp

if edad < 3
	puts 'Bebe'
elsif edad < 12
	puts 'Niño'
elsif edad < 18
	puts 'Adolescente'
elsif edad < 50
	puts 'Adulto'
else
	puts 'Adulto mayor'
end

# === CASE ===
print 'Tipo de cliente(hombre, mujer, niño): '
cliente = gets.chomp

case cliente
when 'hombre'
  puts 'La entrada está S/. 10'
when 'mujer'
  puts 'La entrada está S/. 5'
when 'niño'
  puts 'La entrada es gratis'
else
  puts 'Tiene que seleccionar un tipo de cliente'
end