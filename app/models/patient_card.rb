class PatientCard < ApplicationRecord
  belongs_to :department
  belongs_to :doctor
  has_one :patient
end
