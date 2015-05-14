class Person < ActiveRecord::Base
	has_many :viewings
	has_many :viewed_posts, through: :viewings, source: :post
	
	before_create { self.site_id = 1 }
	
	scope :nonadmin, -> { where.not(admin: true) }
	default_scope { where(site_id:1) }
end
