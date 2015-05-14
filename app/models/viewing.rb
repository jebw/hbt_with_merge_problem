class Viewing < ActiveRecord::Base
  belongs_to :person
  belongs_to :post

	before_create { self.site_id = 1 }

	default_scope { where(site_id:1) }
end
