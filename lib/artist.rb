require 'pry'

class Artist
	extend Memorable, Findable
	include Paramable, Initialize

	attr_accessor :name
	attr_reader :songs

	@@artists = []

	def initialize
		super
		@songs = [] #Creates empty collection of artist's songs
	end

	def self.all
		@@artists #Outputs all artist instances
	end

	def add_song(song)
		@songs << song #Adds a song to the artist instance's song list
		song.artist = self #Sets the song instance's attribute to the name
	end

	def add_songs(songs)
		songs.each { |song| add_song(song) } #Checks a songlist to see if the artist matches an artist instance, and if it does adds it to the artist's list
	end

end
