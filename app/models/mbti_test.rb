class MbtiTest < ActiveRecord::Base
  attr_accessible :answer_a, :answer_b, :language, :question, :question_number

  attr_accessor :answer

  #def initialize(attributes, options = {})
  #  #self.answer = Answer.find_or_create_by_question_number_and_user_id({question_number:  question_number}, {user_id: current_user.id})
  #end

  def save
    unless self.answer.nil?
      #self.answer = Answer.find_or_create_by_question_number_and_user_id_and_language({question_number:  question_number}, {user_id: current_user.id}, {language: "bg"})

      self.answer.save!
    end
    #super.save
  end
end
