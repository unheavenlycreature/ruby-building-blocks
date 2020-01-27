# frozen_string_literal: true

require './caesar_cipher'

describe 'caesar cipher' do
  context 'lowercase letters' do
    it 'shifts letters forwards' do
      expect(caesar_cipher('abcde', 5)).to eq 'fghij'
    end

    it 'shifts forward over 26 correctly' do
      expect(caesar_cipher('abcde', 31)).to eq 'fghij'
    end
  end

  context 'uppercase letters' do
    it 'shifts letters forwards' do
      expect(caesar_cipher('ABCDE', 5)).to eq 'FGHIJ'
    end

    it 'shifts forward over 26 correctly' do
      expect(caesar_cipher('ABCDE', 31)).to eq 'FGHIJ'
    end
  end

  context 'with punctuation' do
    it 'does not modify punctuation' do
      expect(caesar_cipher('abcde!?.;,', 5)).to eq 'fghij!?.;,'
    end
  end
end
