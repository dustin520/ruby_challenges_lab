# ### Challenge 2 - Calculator

# Create a simple calculator that first asks the user what method 
# they would like to use (addition, subtraction, multiplication, division) 
# and then asks the user for two numbers, returning the result of the method 
# with the two numbers. Here is a sample prompt:

# ```
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9
# ```


def calculator()
	print "What method would you like to use? Add? Sub? Times? Divide? "
	oper = gets.chomp.downcase
	if oper == "add" || oper == "sub" || oper == "times" || oper == "divide"
		print "What is your first number? "
		numOne = gets.chomp.to_i
		print "What is your second number? "
		numTwo = gets.chomp.to_i
		if oper == "add"
			answer = numOne + numTwo
			print "Your result is #{answer}"
		elsif oper == "sub"
			answer = numOne - numTwo
			print "Your result is #{answer}"
		elsif oper == "times"
			answer = numOne * numTwo
			print "Your result is #{answer}"
		elsif oper == "divide"
			answer = numOne / numTwo
			print "Your result is #{answer}"
		else 
			print "Sorry, not a valid option. Try again. "
			calculator()
		end
	else
		print "Nope, that's not going to work. "
		calculator()
	end
end

calculator()

