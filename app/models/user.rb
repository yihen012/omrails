class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         #:recoverable, 
         :rememberable, :trackable,:validatable
       
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :image

  
  has_many :cards, :dependent => :destroy

  has_many :authentications, :dependent => :delete_all

  validates :password, confirmation: true

  def apply_omniauth(auth)
    self.email = auth['extra']['raw_info']['email']
    authentications.build(:provider => auth['provider'], :uid => auth['uid'], :token => auth['credentials']['token'])
  end
end
