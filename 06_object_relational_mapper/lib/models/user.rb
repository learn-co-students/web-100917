class User
  attr_accessor :username

  def self.create_table
    sql = <<-SQL
      CREATE TABLE users (username text);
    SQL

    DB[:conn].execute(sql)
  end

  def self.all

  end

  def self.find(id)

  end

  def initialize(attributes)
    @username = attributes["username"]
  end

  def save

  end

  def create(attributes)

  end

  def update(attributes)

  end

  def persisted?

  end

  def delete

  end

  # user has many posts
  def posts

  end
end
