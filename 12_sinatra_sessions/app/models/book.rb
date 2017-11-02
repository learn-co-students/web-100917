class Book < ActiveRecord::Base
  belongs_to :author

  def anything=(arg)
    self.author = Author.find(arg)
  end

  def author_name=(arg)
    split_name = arg.split(" ")
    first_name = split_name.first
    last_name = split_name.length > 1 ? split_name.last : ''

    self.author = Author.find_or_create_by(
      first_name: first_name,
      last_name: last_name
    )
  end
end
