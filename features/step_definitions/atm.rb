$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))
require 'cucumber'
require 'atm_iml.rb'

Given(/^the user's account has (\d+)$/) do |balance|
  @balance = balance
end

When(/^the user asks the ATM for (\d+)$/) do |cash|
  @cash = cash
end

Then(/^the user's account will have (\d+)$/) do |new_balance|
  @atm=Atm.new
  @new_balance=@atm.get_newbalance(@balance,@cash)
  if @new_balance==new_balance
	@status = 'success'
  else 
    @status = 'fail'
  end
end
Then(/^the withdrawal result will be success$/) do
 @status.should=='success'
end

Then(/^the withdrawal result will be fail$/) do
  @status.should=='fail'
end
