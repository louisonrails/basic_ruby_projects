# frozen_string_literal: true

require_relative 'spec_helper'
require_relative '../solution/ceasar_cipher'

RSpec.describe 'Ceasar Cipher (Edge Cases)' do
  context 'edge cases' do
    it 'handles empty strings' do
      input = ''
      shift = 5
      expected_output = ''
      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end

    it 'handles large shift numbers' do
      input = 'abc'
      shift = 29 # Equivalent to a shift of 3 (29 % 26 == 3)
      expected_output = 'def'
      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end
  end
end
