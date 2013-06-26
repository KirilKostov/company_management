class Contact < ActiveRecord::Base
  attr_accessible :phonenumber

  belongs_to :user

  # Validations
  validates :phonenumber, 
            :presence => true,
            :length   => { :within => 6..12 }
end
