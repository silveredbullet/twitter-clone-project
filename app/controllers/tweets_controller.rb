class TweetsController < ApplicationController
  def index
    @tweet = Tweet.all
  end
  
  def new 
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(params.require(:tweet).permit(:title, :text))
 
    if @tweet.save
    redirect_to @tweet
  else render 'new'
    end
  end
end
