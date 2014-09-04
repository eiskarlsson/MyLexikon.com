class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :is_answer_a
      t.integer :question_number
      t.integer :user_id

      t.timestamps
    end
  end
end
