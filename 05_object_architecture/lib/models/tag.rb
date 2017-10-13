class Tag
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_title(title)
    self.all.find do |tag|
      tag.title == title
    end
  end

  def self.find_or_create_by_title(title)
    self.find_by_title(title) || Tag.new(title)
  end

  def post_tags
    PostTag.all.select do |post_tag|
      post_tag.tag == self
    end
  end

  def posts
    # what are the posts for each tag
    post_tags.map do |post_tag|
      post_tag.post
    end
  end

end
