class Score < ActiveRecord::Base

	validates :name, presence: true
	validates :test_type, presence: true
	validates :month, presence: true
	validates :year, presence: true
	validates :taken_date, presence: true

	belongs_to :user

end
