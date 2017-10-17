# Intro to ORMs

## Key Points
* ORM
  * Object relation whatever (mapping)
  * Creating a relationship between the database records and objects

* User
  * attributes
    * username
    * age

* CRUD
  * Create table
    * SQL
      * CREATE TABLE users (id integer primary key, username text, age integer)
  * Create
    * SQL
      * INSERT INTO users (username, age) VALUES ('whatever', 100)
    * Ruby
      * User.create # => User id:1 username: 'whae', age: 100
  * Read Multiple
    * SQL
      * SELECT * FROM users WHERE age = 100
    * Ruby
      * User.find_by_age(100)
  * Read
    * SQL
      * SELECT * FROM users WHERE id = 1
    * Ruby
      * User.find(1)
  * Update
    * SQL
      * UPDATE users SET age = 50 WHERE id = 1
    * Ruby
      * tim.age = 50
      * tim.save
      * # tim.update(age: 50)
  * Delete
    * SQL
      * DELETE FROM users WHERE id = 1
    * Ruby
      * tim.delete
* ORM
  * Classes relate to Tables
  * Instances relate to Rows
  * Attributes relate to Columns/Values
