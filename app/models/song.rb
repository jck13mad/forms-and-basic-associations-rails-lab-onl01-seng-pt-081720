class Song < ActiveRecord::Base
  # add associations here
  has_many :notes 
  belongs_to :genre 
  belongs_to :artist 
  
  def genre_name=(genre)
    self.genre = Genre.find_or_create_by(name: genre)
  end 
  
  def genre_name 
    self.genre.name if self.genre 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end 
  
  def artist_name
    self.artist.name if self.artist 
  end 
  
  def note_contents=(content)
    content.each do |content|
      self.notes << Note.find_or_create_by(content: content)
    end 
  end 
  
  def note_contents
    ret = []
    self.notes.each do |notes|
      ret << note.content unless note.content.empty?
    end 
  end 
end
