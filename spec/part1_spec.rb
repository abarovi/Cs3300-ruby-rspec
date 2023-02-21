# frozen_string_literal: true

require_relative '../lib/ruby_intro'

describe 'Ruby intro part 1' do
  describe '#sum' do

    it 'returns correct sum [1 point]', points: 1 do
      expect(sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer       #tests if the result of the sum is actually in integer after send the test array
      expect(sum([1, 2, 3, 4, 5])).to eq(15)                     #tests if the result of the sum is the desired value of 15 after sending the test array
      expect(sum([1, 2, 3, 4, -5])).to eq(5)                     #tests if the result of the sum is the desired value of 5 after sending the test array
      expect(sum([1, 2, 3, 4, -5, 5, -100])).to eq(-90)          #tests if the result of the sum is the desired value of -90 after sending the test array
    end

    it 'works on the empty array [2 points]', points: 2 do
      expect { sum([]) }.not_to raise_error                      #tests if an error is raised after a null array is sent
      expect(sum([])).to be_zero                                 #tests if the desired value of 0 is the output after a null array
    end
  end

  describe '#max_2_sum' do
    
    it 'returns the correct sum [1 point]', points: 1 do
      expect(max_2_sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer
      expect(max_2_sum([1, -2, -3, -4, -5])).to eq(-1)
    end
    it 'works even if 2 largest values are the same [1 point]', points: 1 do
      expect(max_2_sum([1, 2, 3, 3])).to eq(6)
    end
    it 'returns zero if array is empty [1 point]', points: 1 do
      expect(max_2_sum([])).to be_zero
    end
    it 'returns value of the element if just one element [1 point]', points: 1 do
      expect(max_2_sum([3])).to eq(3)
    end
  end

  describe '#sum_to_n' do

    it 'returns true when any two elements sum to the second argument [2 points]', points: 2 do
      expect(sum_to_n?([1, 2, 3, 4, 5], 5)).to be true # 2 + 3 = 5
      expect(sum_to_n?([3, 0, 5], 5)).to be true # 0 + 5 = 5
      expect(sum_to_n?([-1, -2, 3, 4, 5, -8], -3)).to be true  # handles negative sum
      expect(sum_to_n?([-1, -2, 3, 4, 5, -8], 12)).to be false # 3 + 4 + 5 = 12 (not 3 elements)
      expect(sum_to_n?([-1, -2, 3, 4, 6, -8], 12)).to be false # no two elements that sum
    end
    it 'returns false for any single element array [1 point]', points: 1 do
      expect(sum_to_n?([0], 0)).to be false
      expect(sum_to_n?([1], 1)).to be false
      expect(sum_to_n?([-1], -1)).to be false
      expect(sum_to_n?([-3], 0)).to be false
    end
    it 'returns false for an empty array [1 point]', points: 1 do
      expect(sum_to_n?([], 0)).to be false
      expect(sum_to_n?([], 7)).to be false
    end
  end
end
