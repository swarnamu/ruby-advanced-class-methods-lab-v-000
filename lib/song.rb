class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    songs = self.new
    songs.save
    songs
  end

  def self.new_by_name(song_name)
    songs = self.new
    songs.name = song_name
    
  end

end
