class Article < ActiveRecord::Base
  attr_accessible :text, :title

  belongs_to :user

  #Validations
  validates :title,   
            :presence   => true,   
            :uniqueness => true

  validates :text,
            :presence   => true
end
