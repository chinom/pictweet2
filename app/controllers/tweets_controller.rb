class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)

  end

  def new
    #モデルを利用した情報の表示は行わないため空となる
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end


end
