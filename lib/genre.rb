class Genre
  @@all=[]
  attr_accessor :name
  def self.all
    @@all
  end
  def initialize(name)
    @name=name
    @@all<<self
  end
  def songs
    Songs.all.select do |song|
      song.genre==self
    end
  end
  def artists
    Artist.all.select do |artist|
      artist.genre==self
    end
  end
end
