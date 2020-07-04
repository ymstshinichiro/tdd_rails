require 'rails_helper'

RSpec.describe Dollar, type: :model do

  let(:five) { FactoryBot.create(:five_dollars) }

  it '通貨の掛け算' do
    expect(five.amount).to eq 5

    # timesメソッドには新しいインスタンスを返してもらうことにした
    product = five.times(2)
    expect(product.amount).to eq 10

    product = five.times(3)
    expect(product.amount).to eq 15
  end

  it '同一性、同値性の検証' do
    another_five = FactoryBot.create(:five_dollars)
    expect(five.equals(another_five)).to be true

    # 別の角度から検証するためのテストを書く (三角測量)
    six = FactoryBot.create(:six_dollars)
    expect(five.equals(six)).to be false
  end
end
