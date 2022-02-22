class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :hunter
  validates :description, :title, presence: true
  has_one_attached :photo
end
