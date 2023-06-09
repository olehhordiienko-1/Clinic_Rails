class Patient < ApplicationRecord
  has_many :patient_cards

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
