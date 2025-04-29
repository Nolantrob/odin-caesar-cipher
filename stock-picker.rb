require 'pry-byebug'
def stock_picker(prices_array)

    profit = nil
    best_buy_price = 0
    best_sell_price = 0

    prices_array.each_with_index do |buy_price,index|
        # Starting at first element
        prices_array.each do |sell_price|
            next if prices_array.find_index(sell_price) <= prices_array.find_index(buy_price)
            
            if !profit || sell_price - buy_price > profit
                best_buy_price = buy_price
                best_sell_price = sell_price
                profit = sell_price - buy_price
            end
        end
    end

    puts "You should buy on day #{prices_array.find_index(best_buy_price) + 1}, and sell on day #{prices_array.find_index(best_sell_price) + 1}, for a net profit of $#{profit}."
end

prices = [17,3,6,9,15,8,6,1,10]

stock_picker(prices)