def stock_picker(prices)
    max_profit = 0
    days = [0, 0]
    prices.each_with_index do |price1, index1|
        prices.each_with_index do |price2, index2|

            profit = price2 - price1

            if profit > max_profit && index1 < index2
                max_profit = profit
                days = [index1, index2]
            end

        end
    end

    days
end

p stock_picker([17,3,6,9,15,8,6,1,10])