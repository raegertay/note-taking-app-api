Rails.application.routes.draw do

  scope '/api' do
    get '/user/:name', to: 'api_notes#index'
  end

end
