class Profile < ActiveRecord::Base
  attr_accessible :age, :body_type, :children, :diet, :drinking, :drugs, :education, :ethnicity, :eye_color, :hair_color, :height, :image, :job, :religion, :sex, :smoking, :user_id, :weight, :mbti_test
  belongs_to :user

  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
