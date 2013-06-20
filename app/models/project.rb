class Project < ActiveRecord::Base
  attr_accessible :name, :description

  #validations
  validates :name,
            :presence => true
  validates :description,
            :presence => true
end