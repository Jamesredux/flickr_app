class StaticPagesController < ApplicationController
	include StaticPagesHelper

    FlickRaw.api_key = ENV["FLICKRAW_API_KEY"]
    FlickRaw.shared_secret = ENV["FLICKRAW_SHARED_SECRET"]
 #   flickr.photos.search(user_id: user_id)
  #may not need above as flickraw should automatically search for the keys in ENV?


  def home
  	if !params[:user_id].blank?

  		@user_id = flickr.people.getInfo(:user_id => params[:user_id])
     
  	     	get_pics_by_id

  	end	
  end

  def groups
  end

  def search
  	if !params[:tag].blank?
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


end


