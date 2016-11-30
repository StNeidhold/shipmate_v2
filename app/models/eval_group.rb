class EvalGroup < ApplicationRecord
  # Direct associations

  has_many   :evals,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
