class Company < ApplicationRecord
  belongs_to :user
  has_many :positions
  has_one_attached :logo
  validates :name, :url, :logo, presence: true
end
