module Adapters

  class PostsAdapter

    def self.load_posts(from_file)
      data_file = File.read(from_file)
      data = JSON.parse(data_file)

      # Create new instance of post
      # Associate post with an author
        # If the author is already created, associate post with that instance
        # If the author is not created, create new author instance
      # Associate post with tags
        # If a tag is created, associate post with that instance
        # If a tag is not created, create new tag instance
      binding.pry
    end

  end

end
