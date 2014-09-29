class Trigger < ActiveRecord::Base


	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "200x200>" }

	has_attached_file :image2, :styles => { :medium => "300x300>", :thumb => "200x200>" }

	belongs_to :rule
	
end
