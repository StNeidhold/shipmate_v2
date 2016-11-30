Rails.application.routes.draw do
  # Routes for the Additional_rank_reference resource:
  # CREATE
  get "/additional_rank_references/new", :controller => "additional_rank_references", :action => "new"
  post "/create_additional_rank_reference", :controller => "additional_rank_references", :action => "create"

  # READ
  get "/additional_rank_references", :controller => "additional_rank_references", :action => "index"
  get "/additional_rank_references/:id", :controller => "additional_rank_references", :action => "show"

  # UPDATE
  get "/additional_rank_references/:id/edit", :controller => "additional_rank_references", :action => "edit"
  post "/update_additional_rank_reference/:id", :controller => "additional_rank_references", :action => "update"

  # DELETE
  get "/delete_additional_rank_reference/:id", :controller => "additional_rank_references", :action => "destroy"
  #------------------------------

  # Routes for the Eval_evidence resource:
  # CREATE
  get "/eval_evidences/new", :controller => "eval_evidences", :action => "new"
  post "/create_eval_evidence", :controller => "eval_evidences", :action => "create"

  # READ
  get "/eval_evidences", :controller => "eval_evidences", :action => "index"
  get "/eval_evidences/:id", :controller => "eval_evidences", :action => "show"

  # UPDATE
  get "/eval_evidences/:id/edit", :controller => "eval_evidences", :action => "edit"
  post "/update_eval_evidence/:id", :controller => "eval_evidences", :action => "update"

  # DELETE
  get "/delete_eval_evidence/:id", :controller => "eval_evidences", :action => "destroy"
  #------------------------------

  # Routes for the Eval_accomplishment resource:
  # CREATE
  get "/eval_accomplishments/new", :controller => "eval_accomplishments", :action => "new"
  post "/create_eval_accomplishment", :controller => "eval_accomplishments", :action => "create"

  # READ
  get "/eval_accomplishments", :controller => "eval_accomplishments", :action => "index"
  get "/eval_accomplishments/:id", :controller => "eval_accomplishments", :action => "show"

  # UPDATE
  get "/eval_accomplishments/:id/edit", :controller => "eval_accomplishments", :action => "edit"
  post "/update_eval_accomplishment/:id", :controller => "eval_accomplishments", :action => "update"

  # DELETE
  get "/delete_eval_accomplishment/:id", :controller => "eval_accomplishments", :action => "destroy"
  #------------------------------

  # Routes for the Eval_result resource:
  # CREATE
  get "/eval_results/new", :controller => "eval_results", :action => "new"
  post "/create_eval_result", :controller => "eval_results", :action => "create"

  # READ
  get "/eval_results", :controller => "eval_results", :action => "index"
  get "/eval_results/:id", :controller => "eval_results", :action => "show"

  # UPDATE
  get "/eval_results/:id/edit", :controller => "eval_results", :action => "edit"
  post "/update_eval_result/:id", :controller => "eval_results", :action => "update"

  # DELETE
  get "/delete_eval_result/:id", :controller => "eval_results", :action => "destroy"
  #------------------------------

  # Routes for the Eval_action resource:
  # CREATE
  get "/eval_actions/new", :controller => "eval_actions", :action => "new"
  post "/create_eval_action", :controller => "eval_actions", :action => "create"

  # READ
  get "/eval_actions", :controller => "eval_actions", :action => "index"
  get "/eval_actions/:id", :controller => "eval_actions", :action => "show"

  # UPDATE
  get "/eval_actions/:id/edit", :controller => "eval_actions", :action => "edit"
  post "/update_eval_action/:id", :controller => "eval_actions", :action => "update"

  # DELETE
  get "/delete_eval_action/:id", :controller => "eval_actions", :action => "destroy"
  #------------------------------

  # Routes for the Verb resource:
  # CREATE
  get "/verbs/new", :controller => "verbs", :action => "new"
  post "/create_verb", :controller => "verbs", :action => "create"

  # READ
  get "/verbs", :controller => "verbs", :action => "index"
  get "/verbs/:id", :controller => "verbs", :action => "show"

  # UPDATE
  get "/verbs/:id/edit", :controller => "verbs", :action => "edit"
  post "/update_verb/:id", :controller => "verbs", :action => "update"

  # DELETE
  get "/delete_verb/:id", :controller => "verbs", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Collateral_duty resource:
  # CREATE
  get "/collateral_duties/new", :controller => "collateral_duties", :action => "new"
  post "/create_collateral_duty", :controller => "collateral_duties", :action => "create"

  # READ
  get "/collateral_duties", :controller => "collateral_duties", :action => "index"
  get "/collateral_duties/:id", :controller => "collateral_duties", :action => "show"

  # UPDATE
  get "/collateral_duties/:id/edit", :controller => "collateral_duties", :action => "edit"
  post "/update_collateral_duty/:id", :controller => "collateral_duties", :action => "update"

  # DELETE
  get "/delete_collateral_duty/:id", :controller => "collateral_duties", :action => "destroy"
  #------------------------------

  # Routes for the Rank resource:
  # CREATE
  get "/ranks/new", :controller => "ranks", :action => "new"
  post "/create_rank", :controller => "ranks", :action => "create"

  # READ
  get "/ranks", :controller => "ranks", :action => "index"
  get "/ranks/:id", :controller => "ranks", :action => "show"

  # UPDATE
  get "/ranks/:id/edit", :controller => "ranks", :action => "edit"
  post "/update_rank/:id", :controller => "ranks", :action => "update"

  # DELETE
  get "/delete_rank/:id", :controller => "ranks", :action => "destroy"
  #------------------------------

  # Routes for the Position resource:
  # CREATE
  get "/positions/new", :controller => "positions", :action => "new"
  post "/create_position", :controller => "positions", :action => "create"

  # READ
  get "/positions", :controller => "positions", :action => "index"
  get "/positions/:id", :controller => "positions", :action => "show"

  # UPDATE
  get "/positions/:id/edit", :controller => "positions", :action => "edit"
  post "/update_position/:id", :controller => "positions", :action => "update"

  # DELETE
  get "/delete_position/:id", :controller => "positions", :action => "destroy"
  #------------------------------

  # Routes for the Noun resource:
  # CREATE
  get "/nouns/new", :controller => "nouns", :action => "new"
  post "/create_noun", :controller => "nouns", :action => "create"

  # READ
  get "/nouns", :controller => "nouns", :action => "index"
  get "/nouns/:id", :controller => "nouns", :action => "show"

  # UPDATE
  get "/nouns/:id/edit", :controller => "nouns", :action => "edit"
  post "/update_noun/:id", :controller => "nouns", :action => "update"

  # DELETE
  get "/delete_noun/:id", :controller => "nouns", :action => "destroy"
  #------------------------------

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
