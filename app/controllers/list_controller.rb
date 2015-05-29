class ListController < ApplicationController

	def new
		@new_list = List.new
	end

	def create
		@new_list = List.create(list_params)
		if @new_list.save
			redirect_to root_path
		else
			render :new
		end
	end

	def show
		@list = List.find params[:id]
		@items = @list.items
	end

	def delete
		@list = List.find params[:id]
		@list.delete
		redirect_to root_path
	end

	private
	def list_params
		params.require(:list).permit(:name);
	end

end