# config/routes.rb
Rails.application.routes.draw do
  root to: proc { [200, {}, ["Hello World"]] }
  get "/health", to: proc { [200, {}, ["Health check success"]] }
end