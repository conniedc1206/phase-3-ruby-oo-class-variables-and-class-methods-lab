require 'pry'

class Song
    #Define your Song class such that an individual song is initialized with a name, artist and genre.There should be an attr_accessor for those three attributes.
    attr_accessor :name, :artist, :genre

    #Create a class variable, @@count. We will use this variable to keep track of the number of new songs that are created from the Song class. Set this variable equal to 0
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        #Whenever a new song is created. Your #initialize method should use the @@count variable and increment the value of that variable by 1
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    #Song.count: returns the total number of songs created
    def self.count
        @@count
    end

    #Song.genres: returns an array of all of the genres of existing songs. This array should contain only unique genres — no duplicates! 
    def self.genres
        # With the uniq method you can remove ALL the duplicate elements from an array.
        @@genres.uniq
    end

    #Song.artists: returns an array of all of the artists of the existing songs. This array should only contain unique artists––no repeats!
    def self.artists
        @@artists.uniq
    end

    #Song.genre_count: returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
    def self.genre_count
        #use .tally: Tallies the collection, i.e., counts the occurrences of each element. Returns a hash with the elements of the collection as keys and the corresponding counts as values.
        @@genres.tally
    end

    #Song.artist_count: returns a histogram similar to the one above, but for artists rather than genres.
    def self.artist_count
        @@artists.tally
    end


end
# s1 = Song.new("test1", "test1", "test1")
# s2 = Song.new("test2", "test1", "test1")
# s3 = Song.new("test3", "test3", "test3")
# binding.pry