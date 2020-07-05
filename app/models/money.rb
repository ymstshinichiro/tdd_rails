class Money < ApplicationRecord

  def equals(money)
    self.amount == money.amount
  end
end
