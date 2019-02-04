class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path=path
  end

  def files
    @files ||= Dir.glob("*.mp3").collect{|f| g.gsub("#{path}/","")}
  end

  def import(filenames)
    filenames.each {|filename| Song.new_by_filename(filename)}
  end

  end
end
