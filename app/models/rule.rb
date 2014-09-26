class Rule < ActiveRecord::Base

	attr_accessible :name, :subject, :session_id, :hint_id, :question_id, :trigger_id

	validates :name, presence: true
	validates :subject, presence: true

	has_many :questions
	has_many :triggers
	has_many :hints
	has_many :sittings, :through => :combos

end