class Event < ApplicationRecord
    validates :name, presence: true
    validates :event_type, presence: true
    validates :at, presence: true
    validates :button_color, presence: true
end
