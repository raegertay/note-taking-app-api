Rails.application.routes.draw do

  scope '/api/project' do
    get '/:name', to: 'api_notes#index'
    post '/:name', to: 'api_notes#create'
    delete '/:name/note/:id', to: 'api_notes#destroy'
  end

end
