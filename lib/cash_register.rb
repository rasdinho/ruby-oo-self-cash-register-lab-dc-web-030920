
require 'pry'
class CashRegister

    attr_accessor :total, :employee_discount, :items, :last_transaction
   
    def initialize (employee_discount = nil)
        @total = 0
        @employee_discount = employee_discount
        @items = []
      end

      def discount
        @employee_discount
      end

    # def total
    #     @total
    # end

      def items
        @items
      end

    def add_item(title, price, quantity=1)
      @last_transaction = price * quantity
        @price = price
        @quantity = quantity
        @total += price * quantity
        quantity.times do
            items << title
        end
    end
   
    def apply_discount
        # binding.pry
        if discount
            @total = (total * (100 - discount)/100).to_i
            return "After the discount, the total comes to $#{@total}." #self.total works too
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        #binding.pry
       
        @total -= @last_transaction


        # if items[-1]
        #     @total = @total - @price

   
       
    end
    
      #  self.total -= self.last_transaction[1] * self.last_transaction[2]
      # self.last_transaction[2].times do
       #   self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)
      #  end
      #end
    
# class CashRegister

#     attr_accessor :total, :discount, :items, :last_transaction
  
#     def initialize(discount = nil)
#       self.total = 0
#       self.discount = discount
#       self.items = []
#     end
  
#     def add_item(title, price, quantity = 1)
#       self.total += price * quantity
#       quantity.times { self.items << title }
#       self.last_transaction = [title, price, quantity]
#     end
  
#     def apply_discount
#       self.total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total = self.total * 8 / 10 }."
#     end
  
#     def void_last_transaction
#       self.total -= self.last_transaction[1] * self.last_transaction[2]
#       self.last_transaction[2].times do
#         self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)
#       end
#     end
  
end