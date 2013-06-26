class Project < ActiveRecord::Base
  attr_accessible :name, :description

  # Validations
  validates :name,
            :presence => true
  validates :description,
            :presence => true
end