# frozen_string_literal: true

def stock_picker(prices) # rubocop:disable Metrics/MethodLength
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

    min_price_day = day if price < prices[min_price_day]
  end
  { buy_day: best_buy_day, sell_day: best_sell_day, profit: max_profit }
end
