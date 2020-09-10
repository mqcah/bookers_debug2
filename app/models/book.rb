class Book < ApplicationRecord
	belongs_to :user
	has_many :likes
	has_many :users, through: :likes
	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	def liked_by?(user)
	  likes.where(user_id: user.id).exists?
	end
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end
