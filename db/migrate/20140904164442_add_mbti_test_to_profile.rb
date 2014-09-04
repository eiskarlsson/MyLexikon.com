class AddMbtiTestToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :mbti_test, :string
  end
end
