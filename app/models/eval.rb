class Eval < ApplicationRecord
  # Direct associations

  has_one    :write_up,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
