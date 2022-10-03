class Book < ApplicationRecord
  belongs_to :user
  
  #titleとopinionが入力されているか確認
  validates :title, presence: true
  validates :body, length: { in: 1..200 }
end