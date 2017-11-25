Rails.application.routes.draw do

  scope '/api' do
    get '/projects', to: 'api_projects#index'
    delete '/project/:name', to: 'api_projects#destroy'

    scope '/project' do
      get '/:name', to: 'api_notes#index'
      post '/:name', to: 'api_notes#create'
      delete '/:name/note/:id', to: 'api_notes#destroy'
      put '/:name/note/:id', to: 'api_notes#update'
    end
  end

end
