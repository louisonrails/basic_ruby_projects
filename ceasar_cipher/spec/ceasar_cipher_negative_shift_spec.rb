# frozen_string_literal: true

require_relative 'spec_helper'
require_relative '../solution/ceasar_cipher'

RSpec.describe 'Ceasar Cipher (Negative Shift)' do
  context 'when shifting letters by a negative number' do
    it 'shifts letters with a negative shift' do
      input = 'fghijk'
      shift = -2
      expected_output = 'defghi'
      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end
  end
end
