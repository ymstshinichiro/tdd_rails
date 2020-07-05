require 'rails_helper'

RSpec.describe Money, type: :model do
  it '通貨の掛け算' do
    five = Money.dollar(5)
    # timesメソッドには新しいインスタンスを返してもらうことにした
    expect(Money.dollar(10).equals(five.times(2))).to be true
    expect(Money.dollar(15).equals(five.times(3))).to be true
  end

  it '同一性、同値性の検証' do
    # 別の角度から検証するテストを書く (三角測量)
    expect(Money.dollar(5).equals(Money.dollar(5))).to be true
    expect(Money.dollar(5).equals(Money.dollar(6))).to be false
    expect(Money.dollar(5).equals(Money.franc(5))).to be false
  end

  it '通貨の検証' do
    # 別の角度から検証するテストを書く (三角測量)
    expect(Money.dollar(1).currency).to eq 'USD'
    expect(Money.franc(1).currency).to eq 'CHF'
  end

  it '通貨の足し算' do
    five = Money.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced = bank.reduce(sum, 'USD')
    expect(Money.dollar(10).equals(reduced)).to be true
  end

  it '通貨の足し算(Sumの検証)' do
    five = Money.dollar(5)
    result = five.plus(five)
    sum = result
    expect(five.equals(sum.augend)).to be true
    expect(five.equals(sum.addend)).to be true
  end

  it 'Sumの一般化' do
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, 'USD')
    expect(Money.dollar(7).equals(result)).to be true
  end

  it 'Bank#reduce の一般化' do
    bank = Bank.new
    result = bank.reduce(Money.dollar(1), 'USD')
    expect(Money.dollar(1).equals(result)).to be true
  end

  it '異なる通貨への変換' do
    bank = Bank.new
    bank.add_rate('CHF', 'USD', 2)
    result = bank.reduce(Money.franc(2), 'USD')
    expect(Money.dollar(1).equals(result)).to be true
  end

  it '為替レートの指定が同じ通貨の場合' do
    expect(Bank.new.rate('USD', 'USD')).to be 1
  end
end
