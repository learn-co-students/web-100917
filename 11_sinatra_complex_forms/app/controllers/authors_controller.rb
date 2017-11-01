class AuthorsController < ApplicationController

  # Index   GET     '/authors'          Show all of one resource
  get '/authors' do
    # get all the authors
    @authors = Author.all

    # render the erb
    erb :'authors/index'
  end

  # New     GET     '/authors/new'      Show the form to create one resource
  get '/authors/new' do
    erb :'authors/new'
  end

  # Create  POST    '/authors'          Create the resource from the form
  post '/authors' do
    author = Author.create(params)
    redirect "/authors/#{author.id}"
  end

  # Show    GET     '/authors/:id'      Show one of one resource
  get '/authors/:id' do
    # What's in my params?
    @author = Author.find(params[:id])
    erb :'authors/show'
  end

  # Edit    GET     '/authors/:id/edit' Show the form to edit one resource
  get '/authors/:id/edit' do
    @author = Author.find(params[:id])
    erb :'authors/edit'
  end

  # Update  PATCH   '/authors/:id'      Updates the resource from the form
  patch '/authors/:id' do
    author = Author.find(params[:id])
    author.update(params[:author])

    redirect "/authors/#{author.id}"
  end

  # Delete  DELETE  '/authors/:id'      Deletes the resource (by ID)
  delete '/authors/:id' do
    author = Author.find(params[:id])
    author.delete

    redirect "/authors"
  end
end
