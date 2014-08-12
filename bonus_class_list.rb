# ### Bonus Challenge - Class List

# Create an array of students and allow the user to keep adding new 
# students to the array. After each student is added, display the array to 
# the user (use the inspect method to display the array). If the user deciders 
# to not add an additional student, display the list of the students and the 
# index that each student is at (check out .each_with_index) Here is a sample prompt:

# ```
# Would you like to add another student?
# yes
# What is the student's name?
# Taco
# The array of instructors now looks like: ["Taco"]
# Would you like to add another student?
# no
# Here is a summary of your student array:
# The student at index 0 is Taco
# ```


def class_list()
	array = []
	print "Would you like to add another student? (yes or no) "
	answer = gets.chomp.downcase
	if answer == "yes"
		print "What is the student's name? "
		name = gets.chomp.downcase
		array.push(name)
		print "The array of students is now: " + array
		class_list()
	elsif answer == "no"
		print "Here is a summary of your student array: "
	end
end

class_list()	
