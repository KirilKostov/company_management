class Comment < ActiveRecord::Base
  attr_accessible :text

  belongs_to :article
  belongs_to :user

  # Validations
  validates :text,
            :presence => true
            
end
