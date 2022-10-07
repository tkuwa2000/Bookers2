class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

  #titleとopinionが入力されているか確認
  validates :title, presence: true
  validates :body, presence: true
  validates :body, length: { in: 1..200 }
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end