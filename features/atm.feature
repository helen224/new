Feature: get cash from an ATM
In order to buy something
As a customer
I want some cash from an ATM
Scenario Outline: withdraw money
Given the user's account has <balance>
When the user asks the ATM for <cash>
Then the user's account will have <new_balance>

Examples:
		 |   balance |  cash  |  new_balance |
		 |    5000   |  500   |    4500      | 
		 |    3000   |  3000  |     0        |  
		 |    1000   |  2000  |    1000      | 

  
