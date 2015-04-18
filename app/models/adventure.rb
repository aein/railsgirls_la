class Adventure < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	def expired? 
		visit < Date.today
	end

	validates_presence_of :name
	validates_numericality_of :cents
end
