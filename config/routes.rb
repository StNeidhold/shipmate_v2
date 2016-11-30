Rails.application.routes.draw do
  # Routes for the Write_up resource:
  # CREATE
  get "/write_ups/new", :controller => "write_ups", :action => "new"
  post "/create_write_up", :controller => "write_ups", :action => "create"

  # READ
  get "/write_ups", :controller => "write_ups", :action => "index"
  get "/write_ups/:id", :controller => "write_ups", :action => "show"

  # UPDATE
  get "/write_ups/:id/edit", :controller => "write_ups", :action => "edit"
  post "/update_write_up/:id", :controller => "write_ups", :action => "update"

  # DELETE
  get "/delete_write_up/:id", :controller => "write_ups", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
