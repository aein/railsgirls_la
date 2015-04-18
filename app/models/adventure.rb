class Adventure < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	def expired? 
		visit < Date.today
	end
end
