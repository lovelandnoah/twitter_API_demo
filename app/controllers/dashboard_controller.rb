class DashboardController < ApplicationController
  def index
  	@tweets = client.user_timeline("thew3pingdoctor")
  	@followers = client.followers("thew3pingdoctor")
  end

  def create
  	@tweet = client.update(params[:text])
  	redirect_to root_path
  end

  def search
  	@tweets  = client.search(params[:term]).take(10)
  	render "tweets"
  end

  private
  def tweet_params
		params.require(:tweet).permit(:text)  	
  end
end
