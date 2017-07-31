class MainController < ApplicationController
  
  def index
    @tweet = Tweet.all
  end
  
  def show
    @tweet = Tweet.find(params[:id])
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
  
  def update
    @post = Post.find(params[:id])
 
    if @post.update(post_params)
    redirect_to @post
    else
      render 'edit'
    end
  end


  private
    def tweet_params
      params.require(:tweet).permit(:title, :text)
    end
end
