class Post < ActiveRecord::Base
  attr_accessible :title, :body

  belongs_to :user
  has_many :comments

  validates :title, presence: :true
  validates :body, presence: :true
end
