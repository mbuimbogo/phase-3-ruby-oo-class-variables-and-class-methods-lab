class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count +=1
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        obj = {}
        genre_result = self.genres
        genre_result.each do |genre|
            obj["#{genre}"] = @@genres.count(genre)
        end
        obj
    end

    def self.artist_count
        obj = {}
        artist_result = self.artists
        artist_result.each do |artist|
            obj["#{artist}"] = @@artists.count(artist)
        end
        obj
    end
end



