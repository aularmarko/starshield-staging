Rails.application.routes.draw do
  begin
    devise_for :users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
  rescue ActiveAdmin::DatabaseHitDuringLoad => e
    puts "ActiveAdmin: #{e.class}: #{e}"
  end
end
