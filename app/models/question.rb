class Question < ActiveRecord::Base

	attr_accessible :body, :answer, :rule_id, :image, :image2

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	has_attached_file :image2, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	belongs_to :rule

end
