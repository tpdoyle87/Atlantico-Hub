CATEGORIES = ["Cash", "Federal Bonds", "Letters of Credit", "Private Bonds", "Stocks", "Foreign Currency", "Investment Funds", "Rural Trust Notes", "Gold"]
STOCKS = %w[Apple Google Intel CSX Exxon]
RANKING = %w[1 2 3 4 5 6 7 8 9 10]
ASSET_RANKING = %W[1 2 3 4 5]
puts "generating a user!"

user = User.new(email: 'atlantico@gmail.com', password: '123456', )
user.save

margin = MarginCall.new(value: '10000')
margin.user = user
margin.save

puts "user has been created"
puts "Generating asset classes"

10.times do
  category = Category.new(name: "#{CATEGORIES.shuffle.pop}")
  category.save
  priority = Priority.new(ranking: "#{RANKING.shuffle.pop}")
  priority.user = user
  priority.category = category
  priority.save
end
puts "Asset classes created"

5.times do
  stocks = Category.find_by(name: 'Stocks')
  asset = Asset.new(
    name: "#{STOCKS.shuffle.pop}",
    amount: "#{rand(5000..15000)}",
    ranking: "#{ASSET_RANKING.shuffle.pop}",
    deny: false, guarantee: false)
  asset.user = user
  asset.category = stocks
  asset.save
end

CATEGORIES.each do |category|
  next if category == "Stocks"
  asset = Asset.new(name: category,
  amount: "#{rand(100_000..400_000)}",
  ranking: "#{}"
  )
end




