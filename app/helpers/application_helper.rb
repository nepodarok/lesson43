module ApplicationHelper
  def total_cart_cost
    
    carts = Cart.where(user_id: current_user.id)
    total = 0
    carts.each do |c|
      row_cost = c.count_item * c.dish.price if c
      total += row_cost
    end
   return total
  end
end
