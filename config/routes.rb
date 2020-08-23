Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get "/" => "calc#select_1"
 post "/2" => "calc#select_2"
 post "/controller" => "calc#select_controller"
 post "/result" => "calc#result"
end
