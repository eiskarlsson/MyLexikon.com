class Answer < ActiveRecord::Base
  attr_accessible :is_answer_a, :question_number, :user_id
  belongs_to :user
end
