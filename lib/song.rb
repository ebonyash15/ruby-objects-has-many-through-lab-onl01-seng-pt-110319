class Song
  attr_accessor :artist
  @@all=[]
  def self.all
    @@all
  end
  def initialize(name)
    @name=name
    @@all<<self
  end
end
