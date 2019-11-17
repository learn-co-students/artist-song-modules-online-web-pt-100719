module Paramable
	def to_param
		name.downcase.gsub(' ', '-') #Snakecases artist instance's name
	end
end