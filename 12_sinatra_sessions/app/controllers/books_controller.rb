class BooksController < ApplicationController

  # Index   GET     '/authors'          Show all of one resource
  get '/books' do
    @books = Book.all

    if session[:user_id].nil?
      redirect "/login"
    else
      erb :'books/index'
    end
  end

  # New     GET     '/authors/new'      Show the form to create one resource
  get '/books/new' do
    @authors = Author.all
    erb :'books/new'
  end

  # Create  POST    '/authors'          Create the resource from the form
  post '/books' do
    # {title: 'Misery', snippet: 'Car crash', anything: '4'}
    # {title: 'Misery', snippet: 'Car crash', author_name: 'first name'}
    book = Book.create(params)
    redirect "/books/#{book.id}"
  end

  # Show    GET     '/authors/:id'      Show one of one resource
  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :'books/show'
  end

end
