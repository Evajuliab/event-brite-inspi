class Event < ApplicationRecord

    belongs_to :user, optional: true
    has_many :attendances
    has_many :users, through: :attendances

    validates :start_date, presence: true
   
    validates :duration, presence: true, numericality: { greater_than: 0 }
    validates :title, presence: true, length: { in: 5..140 }
    validates :price, presence: true, numericality: { in: 1..1000 }
    validates :location, presence: true





private


end