class Batch < ApplicationRecord
  include PgSearch
  multisearchable against: [:name, :date_start, :date_end]

  has_many :projects, :through => :students
  has_many :students, dependent: :destroy

end
