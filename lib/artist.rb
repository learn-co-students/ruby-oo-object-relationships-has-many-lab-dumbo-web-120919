require 'pry'
require_relative './song.rb'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
        # Song.all << song
    end

    def self.song_count
        artists_songs = Song.all.select do |song|
            song.artist = self
        end
        artists_songs.count

        # get all the songs from the artist class
        # count = 0
        # self.all.each do |artist_instance|
        #     total += artist_instance.
        # end
    end

    def self.all
        @@all
    end

end