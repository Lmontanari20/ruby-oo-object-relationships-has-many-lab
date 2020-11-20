class Author
    attr_accessor :name, :posts 
    
    def initialize(name=nil)
        self.name = name
    end
    
    def posts
        self.posts = Post.all.select{|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        add_post(Post.new(title))
    end

    def self.post_count
        Post.all.length
    end
end