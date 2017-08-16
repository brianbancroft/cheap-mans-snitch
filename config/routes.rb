Rails.application.routes.draw do
  get '/', to: 'checkins#index'
  post '/checkin', to: 'checkins#new_scheduler_action'
end
