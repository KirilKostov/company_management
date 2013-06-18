class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :surname
  validates :name, :surname, :email, :password, :presence => true
end
