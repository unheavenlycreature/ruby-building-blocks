def stock_picker(prices)
  day_purchased, day_sold, local_min, running_sum = [0, 0, 0, 0]
  max_sum = -999999999

  prices.length.times do |day|
    # We won't be buying and selling on the same day.
    if day == 0
      next
    end

    # Prices are dropping - set this day to the new
    # local minimum and reset the running sum.
    if prices[day - 1] > prices[day]
      running_sum = 0
      local_min = day
      next
    end

    # Prices are increasing - see how much money
    # has been made, and if it's the most possible so far,
    # update the max sum in addition to the days to
    # buy and sell the stock.
    running_sum += prices[day]
    if (running_sum > max_sum)
      max_sum = running_sum
      day_purchased = local_min
      day_sold = day
    end
  end
  [day_purchased, day_sold]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
