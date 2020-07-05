class Franc < Money

  def times(multiplier)
    # Money.franc(self.amount * multiplier)
    Money.new(amount: self.amount * multiplier)
  end
end
