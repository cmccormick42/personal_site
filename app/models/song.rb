class Song < ApplicationRecord
  # attr_accessible :title, :artist, :album, :cover_art_url

  def self.list_songs
    Song.all
  end

  def self.add_song(title, artist, album, file_url, cover_art_url)
    song = Song.new do |song|
      song.title = title
      song.artist = artist
      song.album = album
      song.file_url = file_url
      song.cover_art_url = cover_art_url
    end

    song.save
  end
end
