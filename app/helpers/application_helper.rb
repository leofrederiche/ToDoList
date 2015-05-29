module ApplicationHelper

	def color_list
		@color = rand(1..3);
		if @color == 1
			"green"
		else
			"blue"
		end
	end

end
