require 'spec_helper'
require_relative '../solution/stock_picker'

RSpec.describe '#stock_picker' do
  it 'returns the correct buy/sell days and profit' do
    result = stock_picker([17,3,6,9,15,8,6,1,10])
    expect(result).to eq({ buy_day: 1, sell_day: 4, profit: 12 })
  end

  it 'returns zero profit when prices always decrease' do
    result = stock_picker([10, 9, 8, 7, 6])
    expect(result).to eq({ buy_day: 0, sell_day: 0, profit: 0 })
  end

  it 'handles fluctuating prices correctly' do
    result = stock_picker([9, 2, 5, 9, 1, 6])
    expect(result).to eq({ buy_day: 1, sell_day: 3, profit: 7 })
  end
end
