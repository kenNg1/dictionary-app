require('pry')

class Word

attr_reader(:name,:defs,:id)

@@words = []

def initialize(name)
  @name = name
  @defs = []
  @id = @@words.length()+1
end

def self.all()
  @@words
end

def save()
  @@words.push(self)
end

def self.clear()
  @@words = []
end

def add_def(defin)
  @defs.push(defin)
end

def self.find(id)
  found_word = nil
  @@words.each() do |word|
    if word.id().== id
      found_word = word
    end
  end
found_word
end

end
