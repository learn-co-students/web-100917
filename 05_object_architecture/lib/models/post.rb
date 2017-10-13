class Post
  attr_accessor :content, :author, :tags

  @@all = []

  def initialize(content)
    @content = content
    @tags = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_tag(tag)
    self.tags << tag
    tag.posts << self
  end

  # what are the tags for this post??

end
