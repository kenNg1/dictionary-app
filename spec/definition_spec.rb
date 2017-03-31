require('rspec')
require('definition')

describe('Definition') do
  before() do
    Definition.clear()
  end
  
  describe('#content') do
    it('returns the content of the definition') do
      test_definition = Definition.new({:content => "1", :by => "ken"})
      expect(test_definition.content()).to(eq("1"))
    end
  end

  describe('#by') do
    it('returns the person who added the definition') do
      test_definition = Definition.new({:content => "1", :by => "ken"})
      expect(test_definition.by()).to(eq("ken"))
    end
  end

  describe('.all') do
    it('expects it to be empty at first') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the word to the array') do
      test_definition = Definition.new({:content => "1", :by => "ken"})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('empties out all the definitions') do
      test_definition = Definition.new({:content => "1", :by => "ken"})
      test_definition.save()
      expect(Definition.clear()).to(eq([]))
    end
  end

end
