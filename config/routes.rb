Rails.application.routes.draw do
  root to: 'pages#home' # step 4 path and the verb
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html.
  # 1. right now we can't add any pages or URL's so let's create a route:
  get '/about', to: 'pages#about', as: :about
  # verb + in the string next to the verb is the path (what is in the URL),
  # then comma to: (so it means to which controller you're sending it to and which action to the controller.)
  # EVERY SINGLE TIME
  # in this example we're sending to controller'pages#about'
  # but in this case we need to create a 'pages' controller. done in terminal via rails generate controller (name of desired controller)
  get '/contact', to: 'pages#contact', as: :contact
end
