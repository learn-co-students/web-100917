require 'pry'
require 'json'

require_relative "./lib/adapters/posts_adapter.rb"
require_relative "./lib/models/user.rb"
require_relative "./lib/models/post.rb"
require_relative "./lib/models/tag.rb"
require_relative "./lib/models/post_tag.rb"

Adapters::PostsAdapter.load_posts('data.json')

Pry.start
