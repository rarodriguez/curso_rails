def calcular_minutos
puts "ejercicio 1: numeros ======"
puts 365 * 24 * 60
end
calcular_minutos


puts "ejercicio 2: Numeros ====="
a = ((((25.0 / 45) + 5) * 5) * -2)
a = a.round(2).abs
puts a 

puts "ejercicio 3: String ====="
a = "Hola" * 10
a = "#{a} Mundo".reverse
puts a

puts "ejercicio 4: String ====="
a = "Aprendiendo Ruby de una manera sencilla"
a = a.split(' ')
a.reverse!
puts a.join(' ')
puts a

puts "ejercicio 5: Arreglos ====="
a = [rand(10000), rand(10000), rand(10000), rand(10000),rand(1000)]
b = 0
a.each do |c|
	b += c
end
puts b.inspect

puts "ejercicio 6: condicionales  ====="
a = gets.chomp.to_i
if((a%4 == 0 && a%100 != 0) || (a % 400 == 0))
	puts "el año es biciesto y tiene 366 días"
else
    puts "el año NO es biciesto"
end	