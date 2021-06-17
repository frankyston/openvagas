class Applicant < ApplicationRecord
  belongs_to :user
  belongs_to :position
  validates :name, :email, :phone, presence: true
end
