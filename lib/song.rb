class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        @@genres << genre
        @@artists << artist

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
        genres_list = {}
        @@genres.map do |g|
            if genres_list[g]
                genres_list[g] += 1
            else
                genres_list[g] = 1
            end
        end
        genres_list
    end

    def self.artist_count
        artists_list = {}
        @@artists.map do |a|
            if artists_list[a]
                artists_list[a] += 1
            else
                artists_list[a] = 1
            end
        end
        artists_list
    end

end