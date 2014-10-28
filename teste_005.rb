#! /usr/bin/ruby

def gcd(n1,n2)
        if ( n1 == n2 )
                return n1
        end

        while ( n2 != 0 )
                r  = n1 % n2
                n1 = n2
                n2 = r
        end

        return n1
end

def lcm(n1,n2)
        return n1 * n2 / gcd(n1, n2)
end

t = 1
2.upto(20) { |i| t = lcm(i, t) }
puts "answer: #{t}"
