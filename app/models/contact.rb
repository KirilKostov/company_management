class Contact < ActiveRecord::Base
  attr_accessible :phonenumber

  belongs_to :user

  # Validations
  validates  :phonenumber, 
             :presence   => true,
             :format     => { :with => /^[0-9]{12}$/, 
             :message    => "Enter a valid phonenumber" }
end
