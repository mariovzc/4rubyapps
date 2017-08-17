=begin
  1. Solicitar el peso
  2. Solicitar estatura
  3. Calcular el indice de masa corporal IMC.
  4. Determinar si la persona esta baja, normal o con sobrepeso
  4.1. Si el IMC < 18.5 está baja de peso.
  4.2. Si el IMC está entre 18.5 y 24.99, peso normal.
  4.3. Si el IMC es mayor a 25 sobrepeso
  5. Imprimir el resultado
=end

print "Ingresa tu peso (kg): "
weight = gets.chomp.to_f

print "Ingresa tu altura (Metros) : "
height = gets.chomp.to_f


bmi = weight / height**2

p
print "#{bmi.round(2)} "
if bmi < 18.5
  p "BAJO DE PESO"
elsif bmi < 25
  p "PESO NORMAL"
else
  p "SOBREPESO"
end