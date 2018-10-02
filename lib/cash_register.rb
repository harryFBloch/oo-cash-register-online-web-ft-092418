require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    i = quantity.to_i
    while i != 0
      @items << item
      i -= 1
    end
    @total += price * quantity
  end
  
  def apply_discount
    if discount != 0
      dis = @total * (@discount.to_f / 100.00)
      @total -= dis
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_trasaction
    
  end
end
