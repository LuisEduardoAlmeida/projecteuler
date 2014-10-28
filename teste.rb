# coding: utf-8

puts 'Entre com um número inteiro'
num = gets.chomp
num = num.to_i
i = 1
aux = 0
teste = 0
	while i < 10
		teste = num % i
	#	puts "o numero #{num}, i #{i}, a divisao #{teste} "
		if num % i == 0
			aux = aux + 1
			
		end	
		i = i + 1
	end	

	if aux > 2
		puts 'não é primo'
	else
		puts 'é primo'
	end
