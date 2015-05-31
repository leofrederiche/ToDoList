module ApplicationHelper

	def color_list
		@color = rand(1..2);
		if @color == 1
			"gray"
		else
			"lightgray"
		end
	end

end
