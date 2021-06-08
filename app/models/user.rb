class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :company
  has_many :applicants
  after_create :welcome_mail

  private

  def welcome_mail
    UserMailer.welcome(self).deliver_now
  end
end
