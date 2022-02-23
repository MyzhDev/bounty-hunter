class Hunter < ApplicationRecord
  belongs_to :user
  has_many :contracts, dependent: :destroy
  has_many :speciality_hunters, dependent: :destroy
  has_many :specialities, through: :speciality_hunters
  accepts_nested_attributes_for :speciality_hunters
  validates :name, :description, :price, presence: true
  has_one_attached :photo
end
