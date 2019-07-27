Rails.application.routes.draw do

	root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/search'
	get 'static_pages/groups'
	get 'static_pages/todayspics'
	get 'static_pages/datesearch'
	get 'static_pages/authtest'

	get 'search', to: 'static_pages#search'
	get 'datesearch', to: 'static_pages#datesearch'


end
