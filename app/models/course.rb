class Course < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5, maximum: 50}
    validates :short_title, presence: true, length: {minimum: 3, maximum: 15}
    validates :description, presence: true, length: {minimum: 5, maximum: 300}
end