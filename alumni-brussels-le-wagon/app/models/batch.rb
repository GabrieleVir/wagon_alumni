class Batch < ApplicationRecord

  has_many :students, dependent: :destroy
  has_many :projects, :through => :students

end
