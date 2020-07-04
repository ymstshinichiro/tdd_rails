require 'rails_helper'

RSpec.describe Dollar, type: :model do

  it '通貨の掛け算' do
    five = FactoryBot.create(:five_dollars)
    expect(five.amount).to eq 5

    five.times(2)
    expect(five.amount).to eq 10

    five.times(3)
    expect(five.amount).to eq 15
  end
end
