i = 0
while i <= 100 
if i % 5 == 0  and i % 3 == 0
	puts "FizzBuzz"
	elsif i % 5 == 0 
		puts "Buzz"
	elsif i & 3 == 0 
		puts "Fizz"
	else 
		puts i
	end
	i = (i+1)
end