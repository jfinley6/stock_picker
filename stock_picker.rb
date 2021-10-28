def stock_picker(stock_array)
    max_profit = 0
    max_profit_array = []
    stock_array.each_with_index do |buy_amount, buy_day|
        stock_array.each_with_index do |sell_amount, sell_day|
            next if sell_day <= buy_day
            if sell_amount - buy_amount >= max_profit
                max_profit = sell_amount - buy_amount
                max_profit_array[0] = sell_day
                max_profit_array[1] = buy_day
            end
        end
    end
    p "Buying on day #{max_profit_array[1]} and selling on day #{max_profit_array[0]} will net you $#{max_profit}"
end

    


stock_picker([17,3,6,9,15,8,6,1,10])