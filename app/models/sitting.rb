class Sitting < ActiveRecord::Base

	validates :date, presence: true

	belongs_to :user

	has_many :combos
	has_many :rules, :through => :combos
	
end
