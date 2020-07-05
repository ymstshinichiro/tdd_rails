module Concerns
  module Expression
    extend ActiveSupport::Concern

    # times, plus, reduceはダックタイピングのように使われるため、
    # 影響範囲を見やすくするため同じmoduleの下に配置した

    module BankLogic
      def reduce(source, to)
        source.reduce(self, to)
      end
    end

    module MoneyLogic
      def times(multiplier)
        Money.new(amount: self.amount * multiplier, currency: self.currency)
      end

      def plus(addend)
        Sum.new(self, addend)
      end

      def reduce(bank, to)
        rate = bank.rate(self.currency, to)
        Money.new(amount: (self.amount / rate), currency: to)
      end
    end

    module SumLogic
      def times(multiplier)
        Sum.new(@augend.times(multiplier), @addend.times(multiplier))
      end

      def plus(addend)
        Sum.new(self, addend)
      end

      def reduce(bank, to)
        amount = self.augend.reduce(bank, to).amount + self.addend.reduce(bank, to).amount
        Money.new(amount: amount, currency: to)
      end
    end
  end
end