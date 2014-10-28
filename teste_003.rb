puts 'Entre com um número inteiro'
num = gets.chomp
num = num.to_i

require "prime"

def problem_three(num)
    last_prime = num.prime_division.last # This will give us [6857, 1]
    # We only want the first one
    last_prime[0] # or last_prime.first
end

puts problem_three(num)