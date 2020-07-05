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
    sum = Money.dollar(5).plus(Money.dollar(5))
    reduced = bank.reduce(sum, 'USD')
    expect(Money.dollar(10).equals(reduced)).to be true
  end
end
