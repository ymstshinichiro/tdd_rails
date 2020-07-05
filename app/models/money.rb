class Money < ApplicationRecord

  def equals(money)
    self.amount == money.amount && self.class == money.class
  end
end
