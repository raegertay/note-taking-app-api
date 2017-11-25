Rails.application.routes.draw do

  scope '/api' do
    get '/user/:name', to: 'api_notes#index'
    post '/user/:name', to: 'api_notes#create'
  end

end
