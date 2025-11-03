require 'spec_helper'
require_relative '../solution/bubble_sort'

RSpec.describe '#bubble_sort' do
  it 'returns a sorted array in ascending order' do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
  end

  it 'returns an empty array when given an empty array' do
    expect(bubble_sort([])).to eq([])
  end

  it 'returns the same array when already sorted' do
    expect(bubble_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  it 'sorts an array with negative numbers' do
    expect(bubble_sort([3, -1, 4, -5, 0])).to eq([-5, -1, 0, 3, 4])
  end

  it 'handles an array with duplicate values' do
    expect(bubble_sort([5, 1, 5, 2, 5])).to eq([1, 2, 5, 5, 5])
  end

end
