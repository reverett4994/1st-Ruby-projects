
def buying (prices)
#prices.index(min)
days=prices.length-1
while prices.index(prices.min) == days
	prices.pop
	min_counter=0
	min_counter+=1
end

while prices.index(prices.max)<prices.index(prices.min)
	cutoff_max=prices.index(prices.max)
	prices.delete_at(cutoff_max)
	#p prices
	counter=0
	counter+=1
	#Nil error if min is already before max because sell and buy date are not created
	$sell_day=prices.index(prices.max)+counter+1
	$buy_day=prices.index(prices.min)+counter+1

end
if $sell_day== nil 
	$sell_day=prices.index(prices.max) + 1
end
if $buy_day==nil 
	$buy_day=prices.index(prices.min) + 1
end
p "The best price to buy the stock is $#{prices.min} on the #{$buy_day} day and the best price to sell the stock is $#{prices.max} on the #{$sell_day} day"
end

prices=[]
p "Enter prices of stocks for each day seperated by commas"
input=gets.chomp
prices=input.split(",")
prices.map!{|p|p.to_i}
buying(prices)

