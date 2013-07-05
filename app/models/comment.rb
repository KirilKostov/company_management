class Comment < ActiveRecord::Base
  attr_accessible :comment

  belongs_to :article
  belongs_to :user

  # Validations
  validates :comment,
            :presence => true
            
end
