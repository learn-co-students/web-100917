class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    # What do I need to do?
    @tweet = Tweet.new
    # can omit instance variable and use symbol :tweet instead
  end

  def create
    Tweet.create(tweet_params)
    redirect_to root_path
    # Tweet.create(...args)
  end

  private

  def tweet_params
    # params == {..., tweet: {text: 'hello'}, ...}
    params.require(:tweet).permit(:text)
  end
end
