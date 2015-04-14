# clase #2 ===> Time, clases, modulos, etc...
# Ejercicio #0: Fechas
require 'time'
fecha = "20/04/2015 19:20:00"
date = Time.parse(fecha)
if date.sec % 10 == 0 || date.min % 10 == 0 || date.hours % 10 == 0
   puts "es una hora especial #{date.strftime('%H:%M %P')}"
elsif date.day % 7 == 0 || date.month % 7 == 0
   puts "es una fecha especial #{date.strftime('%d/%m/%Y')}"   
end

puts "Hoy es #{date.strftime('%d')} de #{date.strftime('%b')} del #{date.strftime('%Y')}"
puts "Hoy es #{date.strftime('%d de %b del %Y')}"

# ejercicio #1: Hashes
puts "=== Ejercicio #1: Hashes"
users = [{name: "Juan", last_name: "Perez", children: ["Ana", "Pablo"]}, 
         {name: "Martina", last_name: "Juarez", children: nil}]
users.each_with_index do |user, i|
	children = user[:children]
	if children && children.size > 0
		children = children.join(', ')
	else
		children = "Sin hijos"
	end
	puts "--- Imprimiendo el usuario #{i + 1}"
	puts "Nombre: #{user[:name]}"
	puts "Apellido: #{user[:last_name]}"
	puts "Hijos: #{children}"
end         

puts " Version 2: \n\n\n"
users = [{name: "Juan", last_name: "Perez", children: ["Ana", "Pablo"]}, 
         {name: "Martina", last_name: "Juarez", children: nil}]
users.each_with_index do |user, i|
	children = user[:children]
	children = if children && children.size > 0
		children.join(', ')
	else
		"Sin hijos"
	end
	puts "--- Imprimiendo el usuario #{i + 1}" +
	     "\n Nombre: #{user[:name]}" + 
	     "\n Apellido: #{user[:last_name]}" +
	     "\n Hijos: #{children}"
end

puts "\n\n=== Ejercicio #2: Clases"
class Vehicle
	attr_reader :current_speed
	def initialize
		@current_speed = 0 
	end
end

class MyCar < Vehicle
	attr_reader :year, :color, :model
	def initialize(year = 1985, color = 'white', model = 'carrera')
		super()
		@year = year
		@color = color
		@model = model
	end
	def accelerate(increment = 1)
		@current_speed += increment
    end
	def brake(decrease = 1)
		@current_speed = (@current_speed - decrease) < 0 ? 0 : @current_speed - decrease
	end
    def turn_off
    	@current_speed = 0
    end
	def self.gas_consumption(km,ltr)
		km.to_f/ltr.to_f if ltr >0
	end
end

car = MyCar.new
puts "Current speed for the car: #{car.current_speed}"
car.accelerate 10
puts "Car velocity after accelerate #{car.current_speed}"
car.brake 5
puts "Car velocity after brake #{car.current_speed}"
car.turn_off
puts "Car velocity after turn_off #{car.current_speed}"
puts "Car gas consumption #{MyCar.gas_consumption(15, 7).inspect}"
puts "Car gas consumption #{MyCar.gas_consumption(5, 0).inspect}"