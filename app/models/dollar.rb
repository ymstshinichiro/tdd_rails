class Dollar < Money

  def times(multiplier)
    Money.new(amount: self.amount * multiplier, currency: 'USD')
  end
end
