class Artist
  attr_reader :name
  @@all=[]
  def self.all
    @@all
  end
  def initialize(name)
    @name=name
    @@all<<self
    @genres=[]
  end
  def new_song(name)
    song=Song.new(name)
    song.artist=self
  end
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  def genres
    self.songs.collect do |song|
      @genres<<song.genre
    end
  end
end
