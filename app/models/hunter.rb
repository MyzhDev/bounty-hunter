class Hunter < ApplicationRecord
  belongs_to :user
  has_many :contracts
  validates :name, :description, :price, presence: true
  has_one_attached :photo
end
