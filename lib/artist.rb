require 'pry'
class Artist
    attr_accessor :name, :songs

    def initialize(name=nil)
        self.name = name
    end

    def songs 
        self.songs = Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        self.add_song(Song.new(name))
    end

    def self.song_count
        Song.all.length
    end
end