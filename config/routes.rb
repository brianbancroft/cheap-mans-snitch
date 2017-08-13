Rails.application.routes.draw do
  get '/', to: 'scheduler_hits#index'
  post '/new-hit', to: 'scheduler_hits#new_scheduler_action'
  delete '/scheduler_hit/:id', to: 'scheduler_hits#destroy'
end
