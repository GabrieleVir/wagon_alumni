class Student < ApplicationRecord
  include PgSearch
  multisearchable against: [:first_name, :last_name]

  belongs_to :project
  belongs_to :batch


end
