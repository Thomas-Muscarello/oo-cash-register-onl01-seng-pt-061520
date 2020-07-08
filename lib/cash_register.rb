class CashRegister

attr_accessor :total, :discount, :price, :items, :transactions

def initialize (discount = 0) #discount starts at zero
    @total = 0 #total starts at zero
    @discount = discount
    @items = []
    @transactions = transactions # transactions are for the price and quantity
end

def add_item(item,price, quantity = 1) #quantity is set to 1 default
    @price = price
    @total += price * quantity 
    @transactions = price * quantity #Each transaction requires a price and quantity
    if quantity > 1
        counter = 0
        while counter < quantity
            @items << item
            counter += 1
        end
    else
        @items << item
    end
end

def apply_discount
    if discount > 0 #as long as the discount is greater than 0
        @take_off = (price * discount)/100 #finding how much to take off
        @total -= @take_off #total - discount
        return "After the discount, the total comes to $#{total}."
    else
        "There is no discount to apply."
    end

end

def void_last_transaction
    @total -= @transactions #remove each transaction starting from the last
end

end
