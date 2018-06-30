require "stock_quote"

print "원하는 NASDAQ 주식의 심볼을 입력하세요 : "
input = gets.chomp

#stocks = StockQuote::Stock.quote("amzn, tsla, aapl, fb, googl")
stock = StockQuote::Stock.quote(input)
#puts stock.latest_price

#stocks.each do |stock|
#    puts stock.latest_price
#end

puts stock.company_name
puts stock.latest_price