class Artist
  attr_reader :name
  @@all=[]
  def self.all
    @@all
  end
  def initialize(name)
    @name=name
    @@all<<self
  end
  def new_song(name, genre)
    song=Song.new(name, self, genre)
  end
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
