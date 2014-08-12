# ### Challenge 4 - Bank Transactions

# Create a prompt that asks the user if they would like to display 
# their balance, withdraw or deposit. Write three methods to perform 
# these calculations and output the result to the user. Here is a sample output:

# ```
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
# ```


def bank_trans()
	print "What would you like to do? (deposit, withdraw, check_balance) "
	action = gets.chomp.downcase
	bal = 5000
	if action == "check_balance"
		print "Your current balance is #{bal}. "
		print "Are you done? "
		req = gets.chomp.downcase
		if req == "yes"
			print "Thank You! "
		elsif req == "no"
			bank_trans()
		end
	elsif action == "withdraw"
		print "How much would you like to withdraw? "
		amount = gets.chomp.to_i
		bal = bal - amount
		print "Your new balance is #{bal} "
		print "Are you done? "
		req = gets.chomp.downcase
		if req == "yes"
			print "Thank You! "
		elsif req == "no"
			bank_trans()
		end
	elsif action == "deposit"
		print "How much would you like to deposit? "
		amount = gets.chomp.to_i
		bal = bal + amount
		print "Your new balance is #{bal} "
		print "Are you done? "
		req = gets.chomp.downcase
		if req == "yes"
			print "Thank You! "
		elsif req == "no"
			bank_trans()
		end
	else
		print "Sorry, not valid, try again. "
		bank_trans()
	end
end

bank_trans()

# how to change so it saves? 