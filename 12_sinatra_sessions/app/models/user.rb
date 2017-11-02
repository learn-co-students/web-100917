class User < ActiveRecord::Base
  # some_user.authenticate('bunnies') => some_user
  # some_user.authenticate('bunny') => false
  def authenticate(check_password)
    password == check_password ? self : false
  end

  private

  # some_user.password == "bunnies" => true
  def password
    BCrypt::Password.new(password_digest)
  end

  # User.create(username: 'Tim', password: 'bunnies')
  def password=(new_password)
    password = BCrypt::Password.create(new_password)
    self.password_digest = password
  end
end
