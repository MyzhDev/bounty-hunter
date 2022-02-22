class Hunter < ApplicationRecord
  belongs_to :user
  has_many :contracts
  has_many :specialities, through: :speciality_hunters
  validates :name, :description, :price, presence: true
  has_one_attached :photo
end
