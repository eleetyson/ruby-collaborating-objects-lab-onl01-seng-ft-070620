class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  def files
    entries = Dir.entries(path)
    entries.select {|entry| entry.end_with?(".mp3")}
  end
  
  def import
    files.each { |file| Song.new_by_filename(file) }
  end

end