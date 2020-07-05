class Franc < Money

  def times(multiplier)
    Money.franc(self.amount * multiplier)
  end
end
