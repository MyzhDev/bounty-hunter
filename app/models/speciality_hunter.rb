class SpecialityHunter < ApplicationRecord
  belongs_to :speciality, dependent: :destroy
  belongs_to :hunter
end
