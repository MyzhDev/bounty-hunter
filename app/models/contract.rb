class Contract < ApplicationRecord
  CONTRACT_STATUS = ['Pending', 'Accepted', 'Declined', 'Done']
  belongs_to :user
  belongs_to :hunter
  validates :description, :title, presence: true
  validates :status, inclusion: { in: CONTRACT_STATUS }
  has_one_attached :photo
end
