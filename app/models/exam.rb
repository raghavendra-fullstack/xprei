class Exam < ApplicationRecord
    has_many :questions, dependent: :destroy
    has_and_belongs_to_many :categories
    has_many :exam_attempts
    belongs_to :school
    belongs_to :instructor, class_name: 'User'

    accepts_nested_attributes_for :questions, allow_destroy: true
end


Exam: "title", "description", "instructor_id", "duration_minutes", "max_attempts"
Question: "exam_id", "question_text", "question_type", "points", "description"
Choice: "question_id", "choice_text", "is_correct"
Answer: "attempt_id", "question_id", "choice_id", "answer_text", "is_correct", "points_awarded"
Category: "name"