class WelcomeController < ApplicationController

	def index
		@lists = List.all
		@items = Item.all
	end

end