class BankAccount
	# create a balance
	# name of person
	# show balance
	# credit/debit 
	attr_accessor :balance
	attr_reader :name

	def initialize(name, balance=0)
		@name    = name
		@balance = balance
	end

	def credit(amount)
		self.balance += amount
		puts "Thank you for depositing: $#{amount}. You now have $#{balance} in your account."
	end

	def debit(amount)
		if balance > amount
			balance = self.balance - amount
			puts "You are withdrawing $#{amount}. You now have $#{balance} in your account."
		else
			puts "You don't have enough money to withdraw!"
		end
	end

	def show_balance
		puts "Balance: $#{balance}"
	end
end

bank_account = BankAccount.new("Mike")
bank_account.show_balance
bank_account.credit(100)
bank_account.debit(70)
bank_account.debit(100)






































