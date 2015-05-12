class Post < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  # in case to use correct class name - belongs_to :user
  has_many :comments
end
