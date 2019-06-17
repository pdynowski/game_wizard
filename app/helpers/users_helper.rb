module UsersHelper

	def name_to_display
		current_user.display_name || current_user.email
	end
end