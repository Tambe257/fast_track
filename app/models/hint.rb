class Hint < ActiveRecord::Base

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	has_attached_file :image2, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	belongs_to :rule

end
