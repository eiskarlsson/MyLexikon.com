class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :age
      t.string :body_type
      t.string :children
      t.string :diet
      t.string :drinking
      t.string :drugs
      t.string :education
      t.string :ethnicity
      t.string :eye_color
      t.string :hair_color
      t.float :height
      t.string :job
      t.string :religion
      t.string :sex
      t.string :smoking
      t.integer :weight
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
