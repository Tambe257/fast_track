class Score < ActiveRecord::Base

	attr_accessible :name, :test_type

	belongs_to :user
end
