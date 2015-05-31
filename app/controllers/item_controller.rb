class ItemController < ApplicationController

	def new
		@new_item = Item.new
		@list = List.find params[:id]
	end

	def create
		@list = List.find params[:id]
		@new_item = Item.create(item_params)
		@new_item.list_id = @list.id
		if @new_item.save
			redirect_to root_path
		else
			render :new
		end
	end

	def destroy
		@item = Item.find params[:id]
		@item.destroy

		redirect_to root_path
	end	

	private
	def item_params
		params.require(:item).permit(:list_id, :description)
	end

end