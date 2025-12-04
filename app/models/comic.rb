class Comic < ApplicationRecord
  validates :series, presence: true
end
