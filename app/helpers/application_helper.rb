module ApplicationHelper
	def full_title(page_title)
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def all_users()
		usr_str = '<br /><br /><h4>User Info</h4>'
		User.find(:all).each do |usr|
			usr_str = usr_str + 'ID: ' + usr.id.to_s + ' - ' + link_to(usr.name, user_path(usr)) + '<br />'
		end
		usr_str.html_safe
	end
end
