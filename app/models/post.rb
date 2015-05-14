class Post < ActiveRecord::Base
	has_many :viewings
	has_many :viewers, through: :viewings, source: :person
	
	before_create { self.site_id = 1 }
	
	default_scope { where(site_id:1) }
end
