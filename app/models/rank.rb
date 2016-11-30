class Rank < ApplicationRecord
  # Direct associations

  has_many   :additional_rank_references,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
