class Tag
  attr_accessor :title, :posts

  @@all = []

  def initialize(title)
    @title = title
    @posts = []
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

  # what are the posts for each tag

end
