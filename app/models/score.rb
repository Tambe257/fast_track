class Score < ActiveRecord::Base

	attr_accessible :name, :test_type, :month, :year, :math, :reading, :writing, :essay, :science, :english, :comment, :day, :taken_date, :user_id

	validates :name, presence: true
	validates :test_type, presence: true
	validates :month, presence: true
	validates :year, presence: true
	validates :taken_date, presence: true

	belongs_to :user

end
