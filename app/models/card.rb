class Card < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name, :image

  has_attached_file :image, :styles => {:large => "640x480#", :medium => "200x200#", :thumb => "100x100#"}

  validates :description, presence: true
  validates :name, presence: true
  validates :user_id, presence: true
  validates_attachment :image, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
                               size: {less_than: 5.megabytes}
end
