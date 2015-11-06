class Caption < ActiveRecord::Base
  belongs_to :image
  belongs_to :user
  acts_as_votable
end
