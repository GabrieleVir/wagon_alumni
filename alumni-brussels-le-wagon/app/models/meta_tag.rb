class MetaTag < ApplicationRecord
  include PgSearch
  multisearchable against: [:name]

  has_and_belongs_to_many :batches
  has_and_belongs_to_many :projects

end
