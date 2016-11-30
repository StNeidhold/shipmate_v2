class Eval < ApplicationRecord
  # Direct associations

  belongs_to :sailor

  has_one    :write_up,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
