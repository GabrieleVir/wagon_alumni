class Batch < ApplicationRecord
  include PgSearch
  multisearchable against: [:name, :date_start, :date_end]

  has_many :projects, :through => :students
  has_many :students, dependent: :destroy
  has_and_belongs_to_many :meta_tags

end
