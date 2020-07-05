class Money < ApplicationRecord

  def times(multiplier)
    # interface的な扱いなので空で良い
    Money.new(amount: self.amount * multiplier, currency: self.currency)
  end

  def equals(money)
    self.amount == money.amount && self.currency == money.currency
  end

  # あんま意味ない気がするが一応実装しておく
  def to_s
    "#{amount} #{currency}"
  end

  def plus(addend)
    Sum.new(self, addend)
  end

  def reduce(to)
    rate = (self.currency == 'CHF' && to == 'USD') ? 2 : 1
    Money.new(amount: (self.amount / rate), currency: to)
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
