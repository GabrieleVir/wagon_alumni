class Student < ApplicationRecord

  belongs_to :project
  belongs_to :batches

end
