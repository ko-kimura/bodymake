class Goal < ApplicationRecord
  validates :weight, presence: true
  validates :date, presence: true
end
