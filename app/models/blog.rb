class Blog < ActiveRecord::Base
	self.per_page = 10
	has_paper_trail
end
