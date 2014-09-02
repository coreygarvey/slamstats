class Article < ActiveRecord::Base
	default_scope -> { order('created_at DESC') }
	validates :body, presence: true
	validates :title, presence: true, length: { maximum: 50 }
end
