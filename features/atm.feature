Feature: get cash from an ATM
In order to buy something
As a customer
I want some cash from an ATM
Scenario Outline: withdraw money
Given the user's account has <balance>
When the user asks the ATM for <cash>
Then the user's account will have <new_balance>
And the withdrawal result will be <status>
Examples:
		 |   balance |  cash  |  new_balance |  status  |
		 |    5000   |  500   |    4500      |  success |
		 |    3000   |  3000  |     0        |  success |
		 |    1000   |  2000  |    1000      |    fail  |
  
