class Sitting < ActiveRecord::Base

	attr_accessible :date, :comment

	validates :date, presence: true

	belongs_to :user

	has_many :rules, :through => :combos
	
end
