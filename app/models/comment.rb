class Comment < ActiveRecord::Base
  belongs_to :adventure
  validates_presence_of :user_name, :email, :body, :adventure_id
  
end
