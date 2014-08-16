class Score < ActiveRecord::Base

	attr_accessible :name, :test_type, :month, :year

	belongs_to :user
end
