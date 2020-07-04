class Dollar < ApplicationRecord

  def times(multiplier)
    self.amount = self.amount * multiplier
  end
end
