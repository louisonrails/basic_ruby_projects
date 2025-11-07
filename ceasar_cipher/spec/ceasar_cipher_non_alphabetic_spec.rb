# frozen_string_literal: true

require_relative 'spec_helper'
require_relative '../solution/ceasar_cipher'

RSpec.describe 'Ceasar Cipher (Non-Alphabetic Characters)' do
  context 'when the string contains non-alphabetic characters' do
    it 'preserves spaces and punctuation' do
      input = 'I like Brownies!'
      shift = 5
      expected_output = 'n qnpj gwtbsnjx!'
      result = ceasar_cipher(input, shift)
      expect(result).to eq(expected_output)
    end
  end
end
