class Bank
  def reduce(source, to)
    sum = source
    amount = sum.augend.amount + sum.addend.amount
    Money.new(amount: amount, currency: to)
  end
end