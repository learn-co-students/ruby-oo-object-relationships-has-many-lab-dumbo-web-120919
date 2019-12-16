class Author

    attr_accessor :name

     @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def posts
        Post.all.select{|post_instance| post_instance.author == self}
    end

    def add_post(posts)
        posts.author = self
    end

    def add_post_by_title(title)
        added = Post.new(title)
        add_post(added)
    end

    def self.post_count
        Post.all.count
    end

    def self.all
        @@all
    end
end



