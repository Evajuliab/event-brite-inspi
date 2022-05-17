class Event < ApplicationRecord
    validates :start_date, presence: true
    validates :future_event
    validates :duration, presence: true
    numericality: { greater_than: 0 }
    validates :title, presence: true, length: { in: 5..140 }
    validate :price, presence: true, numericality: { in: 1..1000 }
    validates :location, presence: true

    belongs_to :user
    has_many :attendances
    has_many :users, through: :attendances



private

def future_event
  errors.add(:start_date, "Ne peut être dans le passé") if start_date < Time.now
end

end