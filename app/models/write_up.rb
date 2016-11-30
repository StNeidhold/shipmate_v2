class WriteUp < ApplicationRecord
  # Direct associations

  belongs_to :bullet_format

  belongs_to :body_format

  belongs_to :heading_opening_format

  belongs_to :breakout_statement_format

  # Indirect associations

  # Validations

end
