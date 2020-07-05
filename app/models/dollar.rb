class Dollar < Money

  def times(multiplier)
    Money.dollar(self.amount * multiplier)
  end
end
