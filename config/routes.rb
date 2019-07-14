Rails.application.routes.draw do

	root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/search'
	get 'static_pages/groups'

end
