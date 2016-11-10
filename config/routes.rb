Rails.application.routes.draw do
  get '/name' => 'games#name_in_caps_method'
  get '/guess_number' => 'games#guess_a_number'
  get '/segment/:variable' => 'games#segment_params_method'
  get '/form' => 'games#form_method' 
  post 'form_result' => 'games#form_result_method'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
