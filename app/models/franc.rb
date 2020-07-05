class Franc < Money

  def times(multiplier)
    Franc.new(amount: self.amount * multiplier)
  end

  def currency
    'CHF'
  end
end
