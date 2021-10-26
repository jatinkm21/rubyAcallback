Rails.application.routes.draw do
  # ROUTES FOR RUBYCODE A
 get 'ruby_a', to:'rubyacode#call_another_ruby'
 post 'callback_listener' ,to:'rubyacode#callback_listener'

end
