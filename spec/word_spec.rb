require('rspec')
require('word')

describe('Word') do
  before do
    Word.clear()
  end
  describe('#name') do
    it('returns the name of the word') do
      test_word = Word.new("table")
      expect(test_word.name()).to(eq("table"))
    end
  end

  describe('.all') do
    it('expects it to be empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the word to the array') do
      test_word = Word.new("apple")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('empties out all the words') do
      test_word = Word.new("apple")
      test_word.save()
      expect(Word.clear()).to(eq([]))
    end
  end

  describe('#defs') do
    it('returns the definitions of the word') do
      test_word = Word.new("apple")
      expect(test_word.defs()).to(eq([]))
    end
  end

  describe('#add_def') do
    it('adds a definition to a word') do
      test_word = Word.new("apple")
      test_word.add_def("the round fruit of a tree of the rose family, which typically has thin green or red skin and crisp flesh")
      expect(test_word.defs()).to(eq(["the round fruit of a tree of the rose family, which typically has thin green or red skin and crisp flesh"]))
    end
  end

  describe('.find') do
    it('finds the word') do
      test_word = Word.new("apple")
      test_word.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

end
