class Genre
  @@all = []
  attr_accessor :name
  include Concerns::CommonInstanceMethods
  extend Concerns::CommonClassMethods
  extend Concerns::Findable

  def initialize(name)
    super(name)
    @songs = []
  end

  def artists
    artists = @songs.collect { |song|
      song.artist
    }
    artists.uniq
  end

  def songs
    @songs
  end
end
