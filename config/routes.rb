Rails.application.routes.draw do
  # Routes for the Bullet_format resource:
  # CREATE
  get "/bullet_formats/new", :controller => "bullet_formats", :action => "new"
  post "/create_bullet_format", :controller => "bullet_formats", :action => "create"

  # READ
  get "/bullet_formats", :controller => "bullet_formats", :action => "index"
  get "/bullet_formats/:id", :controller => "bullet_formats", :action => "show"

  # UPDATE
  get "/bullet_formats/:id/edit", :controller => "bullet_formats", :action => "edit"
  post "/update_bullet_format/:id", :controller => "bullet_formats", :action => "update"

  # DELETE
  get "/delete_bullet_format/:id", :controller => "bullet_formats", :action => "destroy"
  #------------------------------

  # Routes for the Body_format resource:
  # CREATE
  get "/body_formats/new", :controller => "body_formats", :action => "new"
  post "/create_body_format", :controller => "body_formats", :action => "create"

  # READ
  get "/body_formats", :controller => "body_formats", :action => "index"
  get "/body_formats/:id", :controller => "body_formats", :action => "show"

  # UPDATE
  get "/body_formats/:id/edit", :controller => "body_formats", :action => "edit"
  post "/update_body_format/:id", :controller => "body_formats", :action => "update"

  # DELETE
  get "/delete_body_format/:id", :controller => "body_formats", :action => "destroy"
  #------------------------------

  # Routes for the Heading_opening_format resource:
  # CREATE
  get "/heading_opening_formats/new", :controller => "heading_opening_formats", :action => "new"
  post "/create_heading_opening_format", :controller => "heading_opening_formats", :action => "create"

  # READ
  get "/heading_opening_formats", :controller => "heading_opening_formats", :action => "index"
  get "/heading_opening_formats/:id", :controller => "heading_opening_formats", :action => "show"

  # UPDATE
  get "/heading_opening_formats/:id/edit", :controller => "heading_opening_formats", :action => "edit"
  post "/update_heading_opening_format/:id", :controller => "heading_opening_formats", :action => "update"

  # DELETE
  get "/delete_heading_opening_format/:id", :controller => "heading_opening_formats", :action => "destroy"
  #------------------------------

  # Routes for the Breakout_statement_format resource:
  # CREATE
  get "/breakout_statement_formats/new", :controller => "breakout_statement_formats", :action => "new"
  post "/create_breakout_statement_format", :controller => "breakout_statement_formats", :action => "create"

  # READ
  get "/breakout_statement_formats", :controller => "breakout_statement_formats", :action => "index"
  get "/breakout_statement_formats/:id", :controller => "breakout_statement_formats", :action => "show"

  # UPDATE
  get "/breakout_statement_formats/:id/edit", :controller => "breakout_statement_formats", :action => "edit"
  post "/update_breakout_statement_format/:id", :controller => "breakout_statement_formats", :action => "update"

  # DELETE
  get "/delete_breakout_statement_format/:id", :controller => "breakout_statement_formats", :action => "destroy"
  #------------------------------

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
