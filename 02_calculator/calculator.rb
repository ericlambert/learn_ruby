#write your code here
def add(integerA, integerB)
	integerA + integerB
end

def subtract(integerA, integerB)
	integerA - integerB
end

def sum(array)
	array.inject(0){|sum,x| sum + x}
end 

def multiply(array)
	total = 1
	array.each do |number|
		total *= number
	end
	total
end

def power(number, power)
	number ** power
end

# def factorial(number)
# 	total = 1
# 	count = number
# 	while count > 0
# 		total *= count
# 		count -= 1
# 	end
# 	total
# end

def factorial(number)
	total = 1
	number.downto(1){ |n| total *= n}
	total
end