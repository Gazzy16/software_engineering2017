class OrdersController < ApplicationController

        def index
          @orders = Order.all
        end

        def new
          @orders = Order.new
        end

        def create
          id = params[:Product].to_i
          date = params[:Date]
          if id > Product.last.id
            render plain: 'There is no product with such ID !'
          end
          @orders = Order.create(params.require(:order).permit(:Product, :Date))
          # redirect_to orders_path

        end
end
