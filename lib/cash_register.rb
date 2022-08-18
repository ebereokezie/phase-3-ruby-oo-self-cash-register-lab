class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction_price
    def initialize(discount = "There is no discount to apply.")
        @total = 0
        @discount = discount
        @items = []
        @last_transaction_price = 0
    end

    def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times{@items << title}
    @last_transaction_price = price * quantity
    end

    def apply_discount
        if @discount.is_a? Integer
             @total -= (@total * @discount.to_f/100)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -=@last_transaction_price
    end
end
