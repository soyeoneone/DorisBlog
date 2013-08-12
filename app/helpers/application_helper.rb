module ApplicationHelper
	def full_name(page_title)
		base_title = "Doris Blog"
		if page_title.empty?
			base_title
		else 
			"#{base_title} | #{page_title}"
		end
	end
end
