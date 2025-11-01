require 'spec_helper'
require_relative '../solution/ceasar_cipher'

RSpec.describe 'Ceasar Cipher' do
  context 'when shifting letters by a positive number' do
    it 'shifts letters correctly with a shift of 5' do
      input = 'I like Brownies'
      shift = 5
      expected_output = 'n qnpj gwtbsnjx'
      
      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end

    xit 'wraps around when shifting past z' do
      input = 'xyz'
      shift = 3
      expected_output = 'abc'

      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end

    xit 'shifts a single letter correctly' do
      input = 'a'
      shift = 3
      expected_output = 'd'

      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end
  end

  context 'when the string contains non-alphabetic characters' do
    xit 'preserves spaces and punctuation' do
      input = 'I like Brownies!'
      shift = 5
      expected_output = 'n qnpj gwtbsnjx!'

      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end
  end

  context 'when shifting letters by a negative number' do
    xit 'shifts letters correctly with a negative shift' do
      input = 'fghijk'
      shift = -2
      expected_output = 'defghi'

      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end
  end

  context 'edge cases' do
    xit 'handles empty strings' do
      input = ''
      shift = 5
      expected_output = ''

      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end

    xit 'handles large shift numbers' do
      input = 'abc'
      shift = 29  # Equivalent to a shift of 3 (29 % 26 == 3)
      expected_output = 'def'

      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end
  end
end
