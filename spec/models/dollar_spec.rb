require 'rails_helper'

RSpec.describe Dollar, type: :model do

  let(:five) { FactoryBot.create(:five_dollars) }
  let(:ten) { FactoryBot.create(:ten_dollars) }
  let(:fifteen) { FactoryBot.create(:fifteen_dollars) }

  it '通貨の掛け算' do
    expect(five.amount).to eq 5

    # timesメソッドには新しいインスタンスを返してもらうことにした
    product = five.times(2)
    expect(ten.equals(product)).to be true

    product = five.times(3)
    expect(fifteen.equals(product)).to be true
  end


  let(:another_five) { FactoryBot.create(:five_dollars) }
  let(:six) { FactoryBot.create(:six_dollars) }

  it '同一性、同値性の検証' do
    expect(five.equals(another_five)).to be true

    # 別の角度から検証するためのテストを書く (三角測量)
    expect(five.equals(six)).to be false
  end
end
