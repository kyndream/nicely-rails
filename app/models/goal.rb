class Goal < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :amount, numericality: true
  validates :goal_amount, presence: true, numericality: true

  validate :deadline_validation

  def deadline_validation
    if deadline && deadline < Date.today
      errors.add(:deadline, "can't be in the past")
    end
  end
end
