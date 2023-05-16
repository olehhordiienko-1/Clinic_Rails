class Department < ApplicationRecord
  has_many :doctors
  has_many :patient_cards
end
