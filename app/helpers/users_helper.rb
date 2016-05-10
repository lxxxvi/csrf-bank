module UsersHelper
  def display_balance(user)
    balance = user.tranzactions.inject(0) { |sum, trx| sum +=  trx.amount }.to_f
    number_to_currency(balance, unit: "CHF ", separator: ".", delimiter: "'")
  end
end
