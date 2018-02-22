class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :incomes, as: :transactionable
  has_many :expenses, as: :transactionable
  has_many :goals
  
  mount_uploader :avatar, AvatarUploader

  validates :name, presence: true

end
