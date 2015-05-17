class ItemController < ApplicationController

	def new
		@new_item = Item.new
		@list = List.find params[:id]
	end

	def create
		@list = List.find params[:id]
		@new_item = Item.create(item_params)
		if @new_item.save
			redirect_to show_list_path(@list.id)
		else
			render :new
		end
	end

	private
	def item_params
		params.require(:item).permit(:list_id, :description)
	end

end