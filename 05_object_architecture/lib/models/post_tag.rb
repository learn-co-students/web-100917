class PostTag
  attr_accessor :post, :tag

  @@all = []

  def initialize(post, tag)
    @post = post
    @tag = tag
    @@all << self
  end

  def self.all
    @@all
  end

end
