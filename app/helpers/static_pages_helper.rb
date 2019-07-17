module StaticPagesHelper

	def get_pics_by_id
		@photos = flickr.photos.search(user_id: params[:user_id])
	end
end
