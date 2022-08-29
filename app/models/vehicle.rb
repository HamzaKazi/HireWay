class Vehicle < ApplicationRecord
  belongs_to :user
  validates :type, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :category, inclusion: {
    in: %w(Car Limosuine Aircraft Yacht),
    message: 'must be either Car Limosuine Aircraft or Yacht'
  }
end
