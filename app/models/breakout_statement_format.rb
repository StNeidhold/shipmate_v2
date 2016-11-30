class BreakoutStatementFormat < ApplicationRecord
  # Direct associations

  has_many   :evals,
             :class_name => "WriteUp"

  # Indirect associations

  # Validations

end
