module StaticPagesHelper

	def get_pics_by_id
		@photos = flickr.photos.search(user_id: params[:user_id], per_page: 50)
	end

	def get_pics_by_tag
		@photos = flickr.photos.search(tags: params[:tag], per_page: 50)
	end

	def get_todays_pics
		@todays_date = DateTime.now-1
		@photos = flickr.photos.search(min_taken_date: @todays_date.to_s, per_page: 50)
	end
end
