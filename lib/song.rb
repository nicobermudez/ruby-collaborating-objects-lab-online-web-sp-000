class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def artist
    @artist
  end

  def self.new_by_filename
    song=self.new
    song.title = filename.split(" - ")[1]
    song
  end


end
