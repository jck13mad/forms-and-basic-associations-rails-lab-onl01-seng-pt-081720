class Song < ActiveRecord::Base
  # add associations here
  has_many :notes 
  belongs_to :genre 
  belongs_to :artist 
  
  def genre_name=(genre)
    self.genre = Genre.find_or_create_by(name: genre)
  end 
  
  def 
end
