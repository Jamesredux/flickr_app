Rails.application.routes.draw do

	root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/search'
	get 'static_pages/groups'
	get 'static_pages/todayspics'

	get 'search', to: 'static_pages#search'

end
