class Post
  attr_accessor :content, :author

  @@all = []

  def initialize(content)
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def add_tag(tag)
    PostTag.new(self, tag)
  end

  def post_tags
    PostTag.all.select do |post_tag|
      post_tag.post == self
    end
  end

  def tags
    # what are the tags for this post??
    post_tags.collect do |post_tag| # map
      post_tag.tag
    end
  end


end
