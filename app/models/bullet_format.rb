class BulletFormat < ApplicationRecord
  # Direct associations

  has_many   :write_ups,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
