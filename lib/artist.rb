require 'pry'


class Artist

    @@all = []

    attr_accessor :name 

    def initialize(name)
        @name = name

    end

    
    def songs
        Song.all.select{|song_instance| song_instance.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        added = Song.new(name)
        add_song(added) 
    end

    def self.song_count
        Song.all.count
    end

    def self.all
        @@all
    end
    
end


#name of the song and we have the artist who created it

# def initialize(name)
#     @name = name 
# end

# def back_project(project)
#     ProjectBacker.new(project, self)
# end

# def project_backers
#     ProjectBacker.all.select do |projectbacker_instance|
#     projectbacker_instance.backer == self
#     end
# end

# def backed_projects
#     self.project_backers.map do |project_backers|
#     project_backers.project
#     end