require_relative '../config/environment.rb'

URL = "https://www.googleapis.com/books/v1/volumes?q=subject:fiction&maxResults=40"

response = RestClient.get(URL)
books = JSON.parse(response)

books['items'].each do |item|
  book_data = item["volumeInfo"]

  book = Book.new(
    title: book_data["title"],
    snippet: book_data["description"]
  )

  author = book_data['authors'] ? book_data['authors'].first : 'No Author'

  split_name = author.split(" ")
  first_name = split_name.first
  last_name = split_name.last

  book.author = Author.find_or_create_by(
    first_name: first_name,
    last_name: last_name
  )

  book.save
end
