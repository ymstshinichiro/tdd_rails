class Dollar < Money

  def times(multiplier)
    Dollar.new(amount: self.amount * multiplier)
  end
end
