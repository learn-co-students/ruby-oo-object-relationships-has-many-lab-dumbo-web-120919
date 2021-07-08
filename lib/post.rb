class Post
    attr_accessor :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def title
        @title
    end

    def author
        @author
    end

    def author_name
        self.author.name if self.author
    end

    def self.all
        @@all
    end
end