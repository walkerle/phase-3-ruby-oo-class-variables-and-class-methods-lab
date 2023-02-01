require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems2 = Song.new("99 Problems", "Jay-Z2", "rap")
# puts ninety_nine_problems.name
# puts ninety_nine_problems.artist
# puts ninety_nine_problems.genre
# puts Song.artists
puts Song.genre_count

# binding.pry
# 0
