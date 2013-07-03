class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :surname

  has_many :contacts
  has_many :articles

  # Validations
  validates :name, 
            :presence => true,
            :length   => { :within => 2..16 }

  validates :surname, 
            :presence => true,
            :length   => { :within => 2..16 }

  validates :password,
            :presence => true,
            :length   => { :within => 6..20 }

  validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }  
end

