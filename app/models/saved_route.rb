class SavedRoute < ActiveRecord::Base
	validates :start, presence: true
	validates :end, presence: true
	validates :route, presence: true
	validates :fare, presence: true
end
