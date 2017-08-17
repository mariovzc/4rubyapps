=begin
  1. Repartir las cartas
  2. Preguntar al usuario si pide carta o se planta
      Si pide carta
        Si, se pasa ir al punto 4
        De lo controario, volver al punto 2
      Si se planta
        Ir al punto 3
  3. Determinar el valor del repartidor
      Si valor < 17, Entregar otra carta
        Si se pasa, ir al punto 4
      De lo contrrario volver al punto 3
  4. Determinar el ganador
    Si usuario > 21, gana el repartidor
    Si repartidor > 21, gana usuario
    El que tenga el mayor, Gana
    De lo contrario Gana el Repartidor
  5. Iniciar nuevo juego   
=end
require_relative './deck'
require_relative './hand'

deck = Deck.new
dealer = Hand.new(deck)
player = Hand.new(deck)

player.hit!
player.hit!

dealer.hit!

p "Repartidor:  #{dealer}"

p "Jugador:    #{player}"

p "Tu turno: "

while player.value < 21
  print " ¿Carta(C) o Plantas(p)? "
  option = gets.chomp
  if option.upcase == "C"
    player.hit!
    print "Total: #{player.value}"    
    p "   #{player}"  
    p
  elsif option.upcase == "P"
    break
  end
end


if player.value <= 21
  puts
  puts "Turno del repartidor"
  dealer.hit!
  puts " #{dealer}"
  while dealer.value < 17
    dealer.hit!
     p " #{dealer}"
  end
end

puts "Repartidor: total: #{dealer.value} #{dealer}"
puts "Jugador: total: #{player.value} #{player} "

if player.value > 21
  p "Perdiste"  
elsif dealer.value > 21
  p "Ganaste"
elsif player.value == dealer.value
  p "Empatados"
elsif dealer.value > player.value
  p "Perdiste"
else
  if player.value == 21 
    p 'Black Jack' 
  else
    p 'Ganaste' 
  end
end