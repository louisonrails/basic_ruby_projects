require 'spec_helper'
require_relative '../solution/substrings'

RSpec.describe 'substrings' do
  let(:dictionary) { 
    ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] 
  }

  context 'when the string contains multiple dictionary words' do
    it 'counts occurrences of each word in the dictionary' do
      input = "Howdy partner, sit down! How's it going?"
      expected_output = {
        "how" => 2,
        "howdy" => 1,
        "it" => 2,
        "i" => 3,
        "going" => 1,
        "go" => 1,
        "down" => 1,
        "own" => 1,
        "sit" => 1,
        "partner" => 1,
        "part" => 1
      }

      result = substrings(input, dictionary)
      expect(result).to eq(expected_output)
    end
  end

  context 'when the string contains only one word from the dictionary' do
    it 'counts the occurrence of that single word' do
      input = "below"
      expected_output = {
        "below" => 1,
        "low" => 1,
      }

      result = substrings(input, dictionary)
      expect(result).to eq(expected_output)
    end
  end

  context 'when the string contains no words from the dictionary' do
    it 'returns an empty hash' do
      input = "hello world"
      expected_output = {}

      result = substrings(input, dictionary)
      expect(result).to eq(expected_output)
    end
  end

  context 'when the string contains repeated words from the dictionary' do
    it 'counts multiple occurrences of a word' do
      input = "it it it"
      expected_output = {
        "it" => 3,
        "i" => 3
      }

      result = substrings(input, dictionary)
      expect(result).to eq(expected_output)
    end
  end

  context 'when the string contains words that overlap with dictionary entries' do
    it 'correctly counts overlapping substrings' do
      input = "itgoing"
      expected_output = {
        "it" => 1,
        "go" => 1,
        "going" => 1,
        "i" => 2
      }

      result = substrings(input, dictionary)
      expect(result).to eq(expected_output)
    end
  end
end
