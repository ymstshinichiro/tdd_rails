class Sum < Expression
  attr_accessor :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(to)
    amount = self.augend.amount + self.addend.amount
    Money.new(amount: amount, currency: to)
  end
end