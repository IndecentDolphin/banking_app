<h1>BANKING APP</h1>

To run tests:
- Bundle install
- rspec

To run program from project directory
- irb -r "./lib/bank_account"
- account = Account.new
- bank = Interface.new

To modify account
- account.credit(some_amount)
- account.withdraw(some_amount)

To view statement
- bank.display(account)


Ive identified 3 classes so far: 

Account, which will manage the current balance and activity. 
Transaction, which will manage each individual change to the account.
Interface, which will manage the display of statements.


--USER STORIES

As a user,
To save my money
I would like to deposit funds to my account.

As a user,
So I can keep track of my deposits
I would like to have every one recorded with a time

As a user,
To use my money
I would like to withdraw from my account.

As a user,
To see my account stats
I would like to print my account statement to the terminal
