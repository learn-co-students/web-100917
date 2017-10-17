class User
  attr_accessor :id, :username

  def self.create_table
    sql = <<-SQL
      CREATE TABLE users (id integer primary key, username text);
    SQL

    DB[:conn].execute(sql)
  end

  def self.all
    sql = <<-SQL
      SELECT * FROM users;
    SQL

    DB[:conn].execute(sql).map do |record|
      User.new(record)
    end
  end

  def self.find(id)
    sql = <<-SQL
      SELECT * FROM users WHERE id = ?
    SQL

    attributes = DB[:conn].execute(sql, id).first
    User.new(attributes)
  end

  def initialize(attributes)
    @id = attributes["id"]
    @username = attributes["username"]
  end

  def save
    if persisted?
      # do the update
      # select existing

    else
      sql = <<-anything
        INSERT INTO users (username) VALUES (?)
      anything

      DB[:conn].execute(sql, self.username)


      # race conditions creating while querying last_insert_rowid
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM users")[0][0]
    end

    self
  end

  def self.create(attributes)
    user = self.new(attributes)
    user.save
    user
  end

  def update(attributes)

  end

  def persisted?
    !!self.id
  end

  def delete

  end

  # user has many posts
  def posts
    # joins
    # users and posts
    # find all posts for one user
    # post has a user_id column
    sql = <<-SQL
      SELECT * FROM posts LEFT JOIN users ON posts.user_id = users.id WHERE user_id = ?
    SQL

    DB[:conn].execute(sql, self.id)
  end
end
