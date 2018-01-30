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
    songs
  end

  def self.create_by_name(song_name)
    songs = self.create
    songs.name = song_name
    songs
  end

  def self.find_by_name(song_name)
    self.all.find {|s| s.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end

end
