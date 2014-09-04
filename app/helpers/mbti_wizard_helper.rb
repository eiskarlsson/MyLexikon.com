module MbtiWizardHelper
  def self.included base
    base.class_eval do
      def save
        self.each do |mbti_test|
          mbti_test.save
        end
      end
    end
  end
end
