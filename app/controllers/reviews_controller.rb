require 'HTTParty'

class ReviewsController < ApplicationController
  def index
    @response = HTTParty.get "http://api.setlist.fm/rest/0.1/search/setlists?artistName=#{params[:artist].gsub(/ /, '+')}"
    @setlist = @response.parsed_response["setlists"]["setlist"][0]["sets"]["set"]["song"]
  end
end
