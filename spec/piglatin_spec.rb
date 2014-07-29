
require "./lib/pig_latin.rb"
# require 'pry-byebug'

describe PigLatin do 

  before do
    @glove = "glove"
    @egg = "egg"
    @yellow = "yellow"
    @rhythm = "rhythm"
    @integer = 13
    @hash = 'wrong'
    @array = [1, 2, 3, 4]

  end

  # test test test
  describe '#translate' do
    it 'translates a vowel-starting word to its pig latin equivalent' do
      expect(PigLatin.translate("egg")).to eq("eggway")
    end
    it 'translates a consonant-starting word (not y) to it piggy latin equiv' do
      expect(PigLatin.translate(@glove)).to eq("oveglay")
    end
    it 'translates words including y properly' do
      expect(PigLatin.translate(@yellow)).to eq("ellowyay")      
      expect(PigLatin.translate(@rhythm)).to eq("ythmrhay")
    end
  end

end