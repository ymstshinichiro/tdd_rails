class Franc < Money

  def times(multiplier)
    Franc.new(amount: self.amount * multiplier)
  end

  def equals(franc)
    self.amount == franc.amount
  end
end
