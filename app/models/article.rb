class Article < ActiveRecord::Base
	default_scope -> { order('created_at DESC') }
	validates :body, presence: true
	validates :title, presence: true, length: { maximum: 50 }
	scope :general, -> { where category: 'SlamStats' }
	scope :basketball, -> { where category: 'Basketball' }
	scope :analysis, -> { where category: 'Analysis' }
	scope :engineering, -> { where category: 'Engineering' }
end
