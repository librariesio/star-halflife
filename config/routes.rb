Rails.application.routes.draw do
  get '/:owner/:name', to: 'stars#show', format: false, constraints: { :name => /[^\/]+/ }, as: :star, :defaults => { :format => 'html' }
  root to: 'stars#index'
end
