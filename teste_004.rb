
#Problem 4
#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

#puts 'Entre com um número inteiro'
#num = gets.chomp
#num = num.to_i

require 'set'
s = Set.new [0]
999.downto(100) do|one|
   one.downto(100) do |two|
      result = one*two
      if result < s.max then
        break
      end
      s.add(result) if result.to_s.reverse==result.to_s
   end
end
puts s.max