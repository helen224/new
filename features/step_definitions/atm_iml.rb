class Atm
  def get_newbalance balance, cash
  @bal = Integer(balance)
  @ca = Integer(cash)
    if @bal>=@ca
	   @new_balance = String(Integer(balance.to_f - cash.to_f))
	else
	   @new_balance = @bal
	end
	return @new_balance
  end
end
