class Score < ActiveRecord::Base

	attr_accessible :name, :test_type, :month, :year, :math, :reading, :writing, :essay, :science, :english, :comment, :day, :taken_date, :user_id

	belongs_to :user
end
