Rails.application.routes.draw do
  mount Spree::Core::Engine, at: "/"

  Spree::Core::Engine.routes.draw do
    namespace :api do
      get "bestsellers" => "variants#bestsellers"
    end
  end
end
