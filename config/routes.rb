Subscribr::Engine.routes.draw do
  get 'thanks' => 'public_actions#thanks', :as => 'thank_you'
  post 'send-request' => 'public_actions#submit_registration', :as => 'send_subscription'
  root :to => 'public_actions#register'
end
