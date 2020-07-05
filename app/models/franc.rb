class Franc < Money

  def times(multiplier)
    Franc.new(amount: self.amount * multiplier)
  end
end
