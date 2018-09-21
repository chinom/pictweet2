class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    #モデルを利用した情報の表示は行わないため空となる
  end
end
