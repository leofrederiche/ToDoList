class WelcomeController < ApplicationController

	def index
		@lists = List.all.shuffle
		@items = Item.all
	end

end