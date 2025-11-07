# frozen_string_literal: true

require_relative 'spec_helper'
require_relative '../solution/ceasar_cipher'

RSpec.describe 'Ceasar Cipher (Positive Shift)' do
  context 'when shifting letters by a positive number' do
    describe 'shifting letters correctly' do
      it 'shifts letters with a shift of 5' do
        input = 'I like Brownies'
        shift = 5
        expected_output = 'n qnpj gwtbsnjx'
        result = ceasar_cipher(input, shift)
        expect(result).to eq(expected_output)
      end
    end

    describe 'wrapping around when shifting past z' do
      it 'shifts past z correctly' do
        input = 'xyz'
        shift = 3
        expected_output = 'abc'
        result = ceasar_cipher(input, shift)
        expect(result).to eq(expected_output)
      end
    end

    describe 'shifting a single letter correctly' do
      it 'shifts letter a by 3 correctly' do
        input = 'a'
        shift = 3
        expected_output = 'd'
        result = ceasar_cipher(input, shift)
        expect(result).to eq(expected_output)
      end
    end
  end
end
