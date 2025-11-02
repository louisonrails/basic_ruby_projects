def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 0
  max_profit = 0
  min_price_day = 0

  prices.each_with_index do |price, day|

    potential_profit = price - prices[min_price_day]

    if potential_profit > max_profit
      max_profit = potential_profit
      best_buy_day = min_price_day
      best_sell_day = day
    end

    if price < prices[min_price_day]
      min_price_day = day
    end
    puts "Best day to buy: #{best_buy_day} | Best day to sell: #{best_sell_day} | Profit: $#{max_profit}"
  end

end

stock_picker([17,3,6,9,15,8,6,1,10])
