#!/usr/bin/ruby

VALOR = 3*5*7*3*11*31*43*31
#VALOR = 2*2*2*2*2*2*2*2
#VALOR = 984*365*5*36*3*275*257*4257*4258*24890

def fator n

	return [-1, 1] if n<0
	return [0, 1] if n==0
	return [1, 1] if n==1
	return [2, 1] if n==2
	return [n>>1,2] if ((n%2)==0)

	i, j, k = n, 0, 0

	i += j and k = (i**(0.5)).to_i and j += ((j==0)?1:2) while (i-k*k>0)

	k += (j-1)>>1;
	n /= k;

	return [n,k] if n>=k
	return [k,n] if n<k

end

fatores1 = [VALOR]
p, q = 1, 0

while q<fatores1.length do
	while p>=1 do
		fatores1[q], p = fator(fatores1[q])
		p==1 ? break : fatores1 += [p]
	end
	q += 1
end

(fatores1.sort).each do |i|
	print i, " "
end

puts


