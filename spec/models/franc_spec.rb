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
end
