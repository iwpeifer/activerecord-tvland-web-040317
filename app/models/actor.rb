class Actor < ActiveRecord::Base

	has_many :characters
	has_many :shows, through: :characters

	def full_name
		[first_name, last_name].join(" ")
	end

	def list_roles
		self.characters.map {|char| [char.name, char.show.name].join(" - ")}
	end
  
end