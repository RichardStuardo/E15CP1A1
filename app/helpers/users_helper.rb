module UsersHelper

	def logged?
		 session[:user_id].present? ? true : false
	end

	def current_user

		logged? ? User.find(session[:user_id]) : nil
	end
	
end
