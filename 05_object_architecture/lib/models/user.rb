class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # Find
  def self.find_by_name(name)
    self.all.detect do |author| # or find
      author.name == name
    end
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || Author.new(name)
  end

  # find their posts

end
