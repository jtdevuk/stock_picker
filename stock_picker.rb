def stock_picker(days)
  max_profit = 0
  trade_days = []
  days.each_with_index do |buy_price, index|
    index.upto(days.length-1) do |future_price|
      if days[future_price] - buy_price > max_profit
        max_profit = days[future_price] - buy_price
        trade_days[0] = index
        trade_days[1] = future_price
      end
    end
  end
  print trade_days
end
stock_picker([17,3,6,9,15,8,6,1,10])
