class MbtiWizardController < ApplicationController
  include Wicked::Wizard
  before_filter :authenticate_user!


  steps :mbti_step1, :mbti_step2, :mbti_step3, :mbti_step4

  def show
    @mbti_tests
    render_wizard
  end


  def update
    case step
      when :mbti_step1
        save_mbti_tests(0, 18)
      when :mbti_step2
        save_mbti_tests(19, 36)
      when :mbti_step3
        save_mbti_tests(37, 54)
      when :mbti_step4
        save_mbti_tests(55, 70)
    end

    Array.send(:include, MbtiWizardHelper)

    case step
      when :mbti_step4

          redirect_to results_path, notice: 'The current test was saved successfully!'

      else
        render_wizard  @mbti_tests
    end
  end

  private

  def save_mbti_tests(from, to)
    @mbti_tests[from..to].each do |mbti_test_var|
      mbti_test_var.answer = Answer.where(:question_number => mbti_test_var.question_number).first_or_create!()
      mbti_test_var.answer.user_id = current_user.id
      mbti_test_var.answer.is_answer_a = params[("radiobuttontag1"+mbti_test_var.question_number.to_s).to_sym].to_i
      mbti_test_var.save
    end
  end

end
