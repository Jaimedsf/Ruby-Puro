print "Primeiro numero: "
n1 = gets.chomp.to_i

print "Segundo numero: "
n2 = gets.chomp.to_i

soma = n1 + n2
subtracao = n1 - n2
divisao = n1 / n2
resto = n1 % n2

puts "#{n1} + #{n2} = #{soma} "
puts "#{n1} - #{n2} = #{subtracao} "
puts "#{n1} / #{n2} = #{divisao} "
puts "#{n1} % #{n2} = #{resto} "