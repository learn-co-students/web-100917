module Adapters

  class PostsAdapter

    def self.load_posts(from_file)
      data_file = File.read(from_file)
      data = JSON.parse(data_file)

      # Go over all items in the array
      json_posts = data["posts"]

      json_posts.each do |json_post|
        # Create new instance of post
        post = Post.new(json_post["content"])

        # Associate post with an author
          # If the author is already created, associate post with that instance
          # If the author is not created, create new author instance
        author = Author.find_or_create_by_name(json_post["user"])
        post.author = author

        # Associate post with tags
          # If a tag is created, associate post with that instance
          # If a tag is not created, create new tag instance

        json_tags = json_post["tags"]
        json_tags.each do |json_tag|
          tag = Tag.find_or_create_by_title(json_tag)
          post.add_tag(tag)
        end

      end
      binding.pry

    end

  end

end
