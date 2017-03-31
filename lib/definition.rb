require('pry')

class Definition

attr_reader(:content,:by)

@@definitions = []

def initialize(attributes)
  @content = attributes.fetch(:content)
  @by = attributes.fetch(:by)
end

def self.all()
  @@definitions
end

def save()
  @@definitions.push(self)
end

def self.clear()
  @@definitions = []
end

end
