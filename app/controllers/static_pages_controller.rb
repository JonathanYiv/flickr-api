class StaticPagesController < ApplicationController
  def home
    search = params[:username]
    search = "153671534@N08" if search.nil? || search.empty?
    @photos = flickr.photos.search(user_id: search, extras: "url_o")
  end
end
