require 'rest-client'
require 'json'
require 'pry'

def fetch_books
  response = RestClient.get('https://www.googleapis.com/books/v1/volumes?q=teaching+web+development')

  JSON.parse(response)
end

def get_book_hashes(books)
  books["items"].map do |item| # or collect
    {
      authors: item["volumeInfo"]["authors"].join(", "),
      description: item["volumeInfo"]["description"],
      title: item["volumeInfo"]["title"],
      subtitle: item["volumeInfo"]["subtitle"]
    }
  end
end

def print_books(book_hashes)
  # for each book hash, print out title, subtitle, authors, description
  book_hashes.each.with_index do |book_hash, index|
    puts "#{index + 1}. #{book_hash[:title]}"
    puts "#{book_hash[:subtitle]}"
    puts "#{book_hash[:description]}"
    puts "#{book_hash[:authors]}"
    puts
  end
end

books = fetch_books
book_hashes = get_book_hashes(books)
print_books(book_hashes)
