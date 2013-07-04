class Comment < ActiveRecord::Base
  attr_accessible :comment

  belongs_to :article
  belongs_to :user
end
