class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  #association
  has_many :themes
  has_many :votes

  def self.from_omniauth(auth)
    self.where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email || self.dummy_email_with(auth)
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.user
      user.image = auth.info.image
    end
  end
  private
  def self.dummy_email_with(auth)
    return "#{auth.provider}-#{auth.uid}@dummy.com"
  end
end
