class Job < ApplicationRecord
  validates :title, :company, :salary, :region, presence: true
end
