require 'rails_helper'

RSpec.describe Franc, type: :model do

  let(:five) { FactoryBot.create(:five_francs) }
  let(:ten) { FactoryBot.create(:ten_francs) }
  let(:fifteen) { FactoryBot.create(:fifteen_francs) }

  it '通貨の掛け算' do
    # timesメソッドには新しいインスタンスを返してもらうことにした
    expect(ten.equals(five.times(2))).to be true
    expect(fifteen.equals(five.times(3))).to be true
  end

  let(:another_five) { FactoryBot.create(:five_francs) }
  let(:six) { FactoryBot.create(:six_francs) }

  it '同一性、同値性の検証' do
    # 別の角度から検証するテストを書く (三角測量)
    expect(five.equals(another_five)).to be true
    expect(five.equals(six)).to be false
  end
end
