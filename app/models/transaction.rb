class Transaction < ApplicationRecord
  enum recur_type: [:none, :weekly, :monthly]

  belongs_to :transactionable, polymorphic: true, dependent: :destroy

  validates :title, presence: true
  validates :amount, presence: true, numericality: true
  validate :due_date_validation, on: :create

  def due_date_validation
    if due_on && due_on < Date.today
      errors.add(:due_on, "can't be in the past")
    end
  end
end
