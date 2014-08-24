module ApplicationHelper
	def full_name(name)
		base_title = "Ruby on Rails Tutorial Sample App"
		if name.empty?
			base_title
		else
			"#{base_title} | #{name}"
		end
	end
end
