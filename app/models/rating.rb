class Rating < ApplicationRecord
  # Direct associations

  has_many   :additional_rating_references,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
