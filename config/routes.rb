Rails.application.routes.draw do
  root 'games#init'
  get '/name' => 'games#name_in_caps_method'
  get '/form' => 'games#form_method'
  post '/form_result' => 'games#form_result_method'
  post '/form_result_name' => 'games#form_result_name_method'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
