class Hunter < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price, presence: true
  has_one_attached :photo
end
