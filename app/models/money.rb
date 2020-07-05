class Money < ApplicationRecord

  def times(argument)
    # interface的な扱いなので空で良い
  end

  def equals(money)
    self.amount == money.amount && self.class == money.class
  end

  def self.dollar(amount)
    Dollar.new(amount: amount)
  end
end
