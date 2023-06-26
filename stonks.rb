def stock_picker(prices_array)
    lowest_price = prices_array[0]
    lowest_index = 0
    profit = 0
    result = []

    prices_array.each_with_index do |price, index|
        if price < lowest_price
            lowest_price = price
            lowest_index = index
        end

        if price - lowest_price > profit
            profit = price - lowest_price
            result = [lowest_index, index]
        end
    end
    p result
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([25,16,12,35,19,10,8,16])
stock_picker([1,3,5,8,12,6,18,22,13,5,2])
stock_picker([12,8,5,14,6,3,9,12,22,19,14,30])

#tried various setups to test edge cases