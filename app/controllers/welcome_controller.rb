class WelcomeController < ApplicationController

	def index
		@lists = List.all.reverse
		@items = Item.all
	end

end