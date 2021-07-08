class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_post_by_title(new_title)
        new_post = Post.new(new_title)
        new_post.author = self
    end

    def posts
        Post.all.select do |post_instance|
            post_instance.author == self
        end
    end

    def add_post(post)
        post.author = self
        # Post.all << post
    end

    def self.post_count
        Post.all.length
    end

    def self.all
        @@all
    end
end