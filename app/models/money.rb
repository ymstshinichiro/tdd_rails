class Money < ApplicationRecord

  def times(argument)
    # interface的な扱いなので空で良い
  end

  def equals(money)
    self.amount == money.amount && self.class == money.class
  end

  class << self
    def dollar(amount)
      Dollar.new(amount: amount, currency: 'USD')
    end

    def franc(amount)
      Franc.new(amount: amount, currency: 'CHF')
    end
  end
end
