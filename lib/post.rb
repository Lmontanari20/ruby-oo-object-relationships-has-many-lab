class Post
    attr_accessor :author, :title
    
    @@all = []
    
    def initialize(title)
        self.title = title
        self.author = nil
        @@all << self
    end
    
    def self.all
        @@all
    end

    def author_name
        self.author ? self.author.name : nil
    end

end