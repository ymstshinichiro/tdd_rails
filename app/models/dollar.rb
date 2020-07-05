class Dollar < Money

  def times(multiplier)
    Dollar.new(amount: self.amount * multiplier)
  end

  def equals(dollar)
    self.amount == dollar.amount
  end
end
