class Dollar < ApplicationRecord

  def times(multiplier)
    Dollar.new(amount: self.amount * multiplier)
  end
end
