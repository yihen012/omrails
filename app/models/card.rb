class Card < ActiveRecord::Base
	belongs_to :user
  attr_accessible :description, :name

  validates :description, presence: true
  validates :name, presence: true
  validates :user_id, presence: true
end
