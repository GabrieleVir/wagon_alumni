class Project < ApplicationRecord
  include PgSearch
  multisearchable against: [:name, :description]

  has_many :students

end
