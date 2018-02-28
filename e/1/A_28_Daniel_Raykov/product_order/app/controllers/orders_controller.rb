class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    
    if @order.save
      redirect_to orders_path, notice: "Product #{@order.name} succsessfully created!"
    else
      render "new"
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    
    redirect_to orders_path, notice: "The product #{@order.name} has been deleted!"
  end
  
  def order
    if @order = Order.find(params[:id]) 
      redirect_to orders_path, notice: "Order executed succsessfully!"
    else
      notice: "Item does not exist!"
    end
  end
  
  private
  
  def order_params
    params.require(:order).permit(:name, :desc)
  end
end
