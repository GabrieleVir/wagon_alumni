class Project < ApplicationRecord
  include PgSearch
  multisearchable against: [:name, :description]

  has_many :students
  has_and_belongs_to_many :meta_tags
end
