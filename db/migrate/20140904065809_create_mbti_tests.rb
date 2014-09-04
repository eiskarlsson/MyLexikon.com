class CreateMbtiTests < ActiveRecord::Migration
  def change
    create_table :mbti_tests do |t|
      t.integer :question_number
      t.string :question
      t.string :answer_a
      t.string :answer_b
      t.string :language

      t.timestamps
    end
  end
end
