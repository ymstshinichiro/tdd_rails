class Sum < Expression
  attr_accessor :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, to)
    amount = self.augend.reduce(bank, to).amount + self.addend.reduce(bank, to).amount
    Money.new(amount: amount, currency: to)
  end

  def plus(addend)
    Sum.new(self, addend)
  end

  def times(multiplier)
    Sum.new(@augend.times(multiplier), @addend.times(multiplier))
  end
end