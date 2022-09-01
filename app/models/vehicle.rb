class Vehicle < ApplicationRecord
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :category, inclusion: {
    in: %w(Car Limosuine Aircraft Yacht),
    message: 'must be either Car Limosuine Aircraft or Yacht'
  }

  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :name, :description ],
  associated_against: {
    director: [ :name, :description ]
  },
  using: {
    tsearch: { prefix: true }
  }

end
