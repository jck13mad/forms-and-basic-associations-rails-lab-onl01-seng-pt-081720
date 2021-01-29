class Song < ActiveRecord::Base
  # add associations here
  has_many :notes 
  belongs_to :genre 
  belongs_to :artist 
  
  def genre_name=(genre)
    self.genre
  end 
end
