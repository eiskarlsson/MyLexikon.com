class Profile < ActiveRecord::Base
  attr_accessible :age, :body_type, :children, :diet, :drinking, :drugs, :education, :ethnicity, :eye_color, :hair_color, :height, :image, :job, :religion, :sex, :smoking, :user_id, :weight
  belongs_to :user

end
