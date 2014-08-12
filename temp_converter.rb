# # Intro to Ruby Lab

# For this lab, we'd like you to complete a few challenges 
# to reinforce your knowledge of integers, strings, arrays 
# and booleans as well as iterators.

# ### Challenge 1 - Temperature Converter

# Create a simple temperature convertor.  It should function 
# like the example below:

# ```
# Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert 
# from Fahrenheit to Celsius
# 1
# Enter Celsius Temperature:
# 24
# 24 degrees Celsius is equal to 75.2 degrees Fahrenheit
# ```

# Pseudo - 
# °F to °C	Deduct 32, then multiply by 5, then divide by 9
# °C to °F	Multiply by 9, then divide by 5, then add 32

def temp_convert()
	print "Type 1 to convert from Celsius to Fahrenheit OR type '2' to convert from F to C: " 
	input = gets.chomp.to_i
	if input == 1
		print "Enter Celsius Temperature: "
		cel = gets.chomp.to_i
		fahr = cel * 9/5 + 32
		puts "#{cel} degrees Celsius is equal to #{fahr} degrees Fahrenheit"
	elsif input == 2
		print "Enter Fahrenheit Temperature: "
		fahr = gets.chomp.to_i
		cel = (fahr - 32) * 5/9 
		puts "#{fahr} degress Fahrenheit is equal to #{cel} degrees Celsius"
	else
		print "Not a valid option, please try again. "
		temp_convert()
	end
end

temp_convert()


