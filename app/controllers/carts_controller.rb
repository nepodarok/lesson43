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


      private

      def cart_params
        params.require(:cart).permit(:count_item, :user_id, :dish_id)
      end


end
