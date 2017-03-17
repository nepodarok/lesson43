class CartsController < ApplicationController

  def create
    @cart = Cart.new(cart_params)
    @cart.user_id = current_user.id
    # проверяем, есть ли запись с таким dish_id
    note = Cart.find_by(dish_id: @cart.dish_id)
    unless note
      if @cart.save
        flash['success'] = "Готово"
        redirect_to :back
      else
        redirect_to :back
      end
    else
      # применяем логику перерасчета, если есть добавка
      note.count_item = note.count_item + @cart.count_item
      if note.save
        flash['success'] = "Готово"
        redirect_to :back
      end
    end
  end

  def delete_expired
    @carts = Cart.where(user_id: current_user.id)
     @carts.each do |cart|
       cart.destroy
     end

     redirect_to :back
  end

  def make_order
    @carts = Cart.where(user_id: current_user.id)
    # render 'make_order'
  end

  def confirm_order

    @carts = Cart.where(user_id: current_user.id)
    @total = total_cart_cost.to_s
    @order = HistoryOrder.new
    @order.details = 'Заказ: '
    @carts.each do |cart|
      row = cart.dish.name + cart.count_item.to_s + " порция/й из " + cart.dish.shop.name + " на сумму " +(cart.dish.price*cart.count_item).to_s + "сом. ----    "
      @order.details = @order.details + row

      cart.destroy
    end
    @order.details = @order.details + "Общий чек на сумму:" + @total

    @order.contacts = "Кто: " + current_user.name.to_s + " адресс: " + current_user.addr.to_s + " телефон: " + current_user.phone.to_s

   @order.save




     flash['success'] = 'Заказ принят, за Вами выехали'
     redirect_to root_path
  end


      private

      def cart_params
        params.require(:cart).permit(:count_item, :user_id, :dish_id)
      end


end
