class PaymentsController < ApplicationController

  def new
    # params[:order_id]
    # @order = Order.find(params[:order_id])
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end

end
