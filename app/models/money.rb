class Money < ApplicationRecord

  include Concerns::Expression::MoneyLogic

  def equals(money)
    self.amount == money.amount && self.currency == money.currency
  end

  class << self
    def dollar(amount)
      Money.new(amount: amount, currency: 'USD')
    end

    def franc(amount)
      Money.new(amount: amount, currency: 'CHF')
    end
  end
end
