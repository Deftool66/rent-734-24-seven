class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :status, inclusion: { in: %w[Pending Accepted Declined] }
end
