class Rule < ActiveRecord::Base

	attr_accessible :name, :subject, :session_id, :hint_id, :question_id, :trigger_id

	validates :name, presence: true
	validates :subject, presence: true

end