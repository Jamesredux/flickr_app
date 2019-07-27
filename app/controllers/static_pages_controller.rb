class StaticPagesController < ApplicationController
	include StaticPagesHelper

    FlickRaw.api_key = ENV["FLICKRAW_API_KEY"]
    FlickRaw.shared_secret = ENV["FLICKRAW_SHARED_SECRET"]
 #   flickr.photos.search(user_id: user_id)
  #may not need above as flickraw should automatically search for the keys in ENV?


  def home
  	if params[:user_id]
  		@user_id = flickr.people.getInfo(:user_id => params[:user_id])

  		get_pics_by_id
    elsif params[:todays_pics]
      get_todays_pics
        
  		#here call method that you will store in helper
  		#to search for photos
  	end	
  end

  def groups
  end

  def search
  	if params[:tag]
  		get_pics_by_tag
  	end	
  end

  def todayspics
    get_todays_pics
  end

  def datesearch
    if params[:datesearch]
      search_by_date
    end  
  end  

  def authtest

  end  
end


#https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=e2a754b54b18e3e9a1b2952b0b3544e3&user_id=28289555%40N03