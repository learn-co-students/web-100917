# What's the purpose of this file?
  # Require the files to run on this app
  # Tell it what files to run

require_relative 'config/environment'

use BooksController
use AuthorsController
run ApplicationController
