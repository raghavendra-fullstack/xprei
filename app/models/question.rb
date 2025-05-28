class Question < ApplicationRecord
    has_many :answers
    has_many :choices
    belongs_to :exam

    accepts_nested_attributes_for :answers, allow_destroy: true
    accepts_nested_attributes_for :choices, allow_destroy: true
end
