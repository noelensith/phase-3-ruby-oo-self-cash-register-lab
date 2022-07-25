
class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize employee_discount=0
        @discount = employee_discount
        @items = []
        @total = 0
    end

    def add_item item, price, quantity=1
        self.last_transaction = price * quantity
        self.total += price*quantity
        quantity.times do
            self.items << item
        end
    end

    def apply_discount
        employee_discount = self.total * self.discount/100
        totalDiscount = self.total - employee_discount
        if(totalDiscount == self.total)
            "There is no discount to apply."
        else
            self.total = totalDiscount
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= last_transaction
    end

end 