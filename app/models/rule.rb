class Rule < ActiveRecord::Base

	validates :name, presence: true
	validates :subject, presence: true

	has_many :questions
	has_many :triggers
	has_many :hints
	has_many :combos
	has_many :sittings, :through => :combos

	accepts_nested_attributes_for :questions, :triggers, :hints

end