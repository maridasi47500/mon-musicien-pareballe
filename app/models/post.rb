class Post < ApplicationRecord
  belongs_to :cat
  belongs_to :user
  has_many :comments
end
