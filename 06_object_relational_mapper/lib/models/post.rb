class Post
  attr_accessor :body

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS posts (body text,user_id integer);
    SQL

    DB[:conn].execute(sql)
  end

  def self.all

  end

  def self.find(id)

  end

  def initialize(attributes)
    @body = attributes["body"]
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

  # belongs_to user
  # returns user instance
  def user

  end
end
