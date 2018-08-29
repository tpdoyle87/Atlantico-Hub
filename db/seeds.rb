CATEGORIES = ["Cash", "Federal Bonds", "Letters of Credit", "Private Bonds", "Stocks", "Foreign Currency", "Investment Funds", "Rural Trust Notes", "Gold"]
STOCKS = %w[Apple Google Intel CSX Exxon]
RANKING = %w[1 2 3 4 5 6 7 8 9 10]
ASSET_RANKING = (1..13).to_a
puts "generating a user!"

user = User.new(email: 'atlantico@gmail.com', password: '123456', )
user.save

margin = MarginCall.new(call_cents: 500_000_30, requirement_cents: 1_000_000_80, guarantee_cents: 500_000_50 )
margin.user = user
margin.save!

puts "user has been created"
puts "Generating asset classes"

CATEGORIES.each do |category|
  rank = RANKING.pop
  category = Category.new(name: category)
  category.save
  priority = Priority.new(ranking: "#{rank}")
  priority.user = user
  priority.category = category
  priority.save
  RANKING.delete(rank)
 end
puts "Asset classes created"

5.times do
  puts "Creating stock Asset"
  stocks = Category.find_by(name: 'Stocks')
  stock = STOCKS.pop
  asset_rank = ASSET_RANKING.shuffle.pop
  asset = Asset.new(
    name: "#{stock}",
    amount_cents: "#{rand(5000..15000)}",
    ranking: "#{asset_rank}",
    deny: false,
    guarantee: false
  )
  asset.user = user
  asset.category = stocks
  asset.save
  puts 'Stock asset saved'
  STOCKS.delete(stock)
  ASSET_RANKING.delete(asset_rank)
end
puts "i should make the category now"
CATEGORIES.each do |category|
  puts "creating #{category} Asset"
  asset_rank = ASSET_RANKING.shuffle.pop
  next if category == "Stocks"
  asset = Asset.new(
    p name: category,
    amount_cents: "#{rand(100_000..400_000)}",
    ranking: "#{asset_rank}",
    deny: false,
    guarantee: false
  )
  category_type = Category.find_by(name: "#{category}")
  asset.user = user
  asset.category = category_type
  asset.save
  ASSET_RANKING.delete(asset_rank)
  puts "saved #{category} Asset"
end


puts "Boom Done"

