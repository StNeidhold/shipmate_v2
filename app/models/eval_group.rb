class EvalGroup < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  has_many   :evals,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
