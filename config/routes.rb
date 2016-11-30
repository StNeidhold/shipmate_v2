Rails.application.routes.draw do
  # Routes for the Adjective resource:
  # CREATE
  get "/adjectives/new", :controller => "adjectives", :action => "new"
  post "/create_adjective", :controller => "adjectives", :action => "create"

  # READ
  get "/adjectives", :controller => "adjectives", :action => "index"
  get "/adjectives/:id", :controller => "adjectives", :action => "show"

  # UPDATE
  get "/adjectives/:id/edit", :controller => "adjectives", :action => "edit"
  post "/update_adjective/:id", :controller => "adjectives", :action => "update"

  # DELETE
  get "/delete_adjective/:id", :controller => "adjectives", :action => "destroy"
  #------------------------------

  # Routes for the Adverb resource:
  # CREATE
  get "/adverbs/new", :controller => "adverbs", :action => "new"
  post "/create_adverb", :controller => "adverbs", :action => "create"

  # READ
  get "/adverbs", :controller => "adverbs", :action => "index"
  get "/adverbs/:id", :controller => "adverbs", :action => "show"

  # UPDATE
  get "/adverbs/:id/edit", :controller => "adverbs", :action => "edit"
  post "/update_adverb/:id", :controller => "adverbs", :action => "update"

  # DELETE
  get "/delete_adverb/:id", :controller => "adverbs", :action => "destroy"
  #------------------------------

  # Routes for the Accent resource:
  # CREATE
  get "/accents/new", :controller => "accents", :action => "new"
  post "/create_accent", :controller => "accents", :action => "create"

  # READ
  get "/accents", :controller => "accents", :action => "index"
  get "/accents/:id", :controller => "accents", :action => "show"

  # UPDATE
  get "/accents/:id/edit", :controller => "accents", :action => "edit"
  post "/update_accent/:id", :controller => "accents", :action => "update"

  # DELETE
  get "/delete_accent/:id", :controller => "accents", :action => "destroy"
  #------------------------------

  # Routes for the Eval_group resource:
  # CREATE
  get "/eval_groups/new", :controller => "eval_groups", :action => "new"
  post "/create_eval_group", :controller => "eval_groups", :action => "create"

  # READ
  get "/eval_groups", :controller => "eval_groups", :action => "index"
  get "/eval_groups/:id", :controller => "eval_groups", :action => "show"

  # UPDATE
  get "/eval_groups/:id/edit", :controller => "eval_groups", :action => "edit"
  post "/update_eval_group/:id", :controller => "eval_groups", :action => "update"

  # DELETE
  get "/delete_eval_group/:id", :controller => "eval_groups", :action => "destroy"
  #------------------------------

  # Routes for the Sailor resource:
  # CREATE
  get "/sailors/new", :controller => "sailors", :action => "new"
  post "/create_sailor", :controller => "sailors", :action => "create"

  # READ
  get "/sailors", :controller => "sailors", :action => "index"
  get "/sailors/:id", :controller => "sailors", :action => "show"

  # UPDATE
  get "/sailors/:id/edit", :controller => "sailors", :action => "edit"
  post "/update_sailor/:id", :controller => "sailors", :action => "update"

  # DELETE
  get "/delete_sailor/:id", :controller => "sailors", :action => "destroy"
  #------------------------------

  # Routes for the Eval resource:
  # CREATE
  get "/evals/new", :controller => "evals", :action => "new"
  post "/create_eval", :controller => "evals", :action => "create"

  # READ
  get "/evals", :controller => "evals", :action => "index"
  get "/evals/:id", :controller => "evals", :action => "show"

  # UPDATE
  get "/evals/:id/edit", :controller => "evals", :action => "edit"
  post "/update_eval/:id", :controller => "evals", :action => "update"

  # DELETE
  get "/delete_eval/:id", :controller => "evals", :action => "destroy"
  #------------------------------

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
