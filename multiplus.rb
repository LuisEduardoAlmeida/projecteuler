def multiplo_de(x)
  Proc.new { |produto| produto.modulo(x).zero? }  
end
sum = 0
i = 1
while i < 1000
	case i
	when multiplo_de(3) then sum += i
	when multiplo_de(5) then sum += i
	end
	i += 1
end
puts "#{sum}"
sum [n | n <- [1..1000-1], n `mod` 5 == 0 || n `mod` 3 == 0]
