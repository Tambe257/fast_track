class Sitting < ActiveRecord::Base

	attr_accessible :date, :comment

	validates :date, presence: true
	
end
