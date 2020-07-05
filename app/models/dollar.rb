class Dollar < Money

  def times(multiplier)
    Dollar.new(amount: self.amount * multiplier)
  end

  def currency
    'USD'
  end
end
