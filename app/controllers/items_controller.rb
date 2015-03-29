class ItemsController < ApplicationController
  before_action :authenticate_user!
  # TODO: check if user is owner of the list
  before_action :set_list
  before_action :set_item, only: [:edit, :update, :destroy]

  def new
    @item = @list.items.new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = current_user.lists.find(params[:list_id])
    end

    def set_item
      @item = @list.items.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:body, :hint)
    end
end
