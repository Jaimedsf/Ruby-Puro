result = ''
loop do
  puts result 
  puts "\n" 
  puts '........Calculadora...............'
  puts 'Selecione uma das seguintes opções'
  puts '1- Soma'
  puts '2- Subtracao'
  puts '3- Multiplicacao'
  puts '4- Divisao'
  puts '0- Sair'
  print 'Opção: '
  
  option = gets.chomp.to_i
  
  if option != 0

    if option == 1 or option == 2 or option == 3 or option == 4
    
    puts "Inisra o primeiro número"
    number1 = gets.chomp.to_i
    puts "Insira o segundo número"
    number2 = gets.chomp.to_i
    
    case option
        when 1
        soma = number1 + number2
        result = "A soma é igual a #{soma}"
        
        when 2
        subtracao = number1 – number2
        result = "A subtração é igual a #{subtracao}"
        
        when 3
        multiplicacao = number1 * number2
        result = "A multiplicação é igual a #{multiplicacao}"
        
        when 4
        divisao = number1 / number2
        result = "A divisão é igual a #{divisao}"
    end
    
    else
        result = "Opção inválida"
    end
    
    else
        system "clear"
        break if option == 0
    end
        system "clear"
    end