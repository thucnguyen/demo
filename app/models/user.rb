class User < ApplicationRecord
  belongs_to :company

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, email: true
  validates :email, uniqueness: { scope: :company }
end
