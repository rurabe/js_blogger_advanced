module Commentable
	extend ActiveSupport::Concern

		def has_comments?
			!self.comments.empty?
		end

	included do
		has_many :comments
	end
end