class Project < ApplicationRecord
  include PgSearch
  multisearchable against: [:name]

  has_many :students
  has_and_belongs_to_many :meta_tags
end
