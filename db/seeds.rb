@colin = User.create(:username => "colinthejeepman", :email => "colin@colin.com", :password => "colinpw")
@alli = User.create(:username => "allithedev", :email => "alli@alli.com", :password => "allipw")
@dave = User.create(:username => "davethegolfer", :email => "dave@dave.com", :password => "davepw")
@stacy = User.create(:username => "stacythebaker", :email => "stacy@stacy.com", :password => "stacypw", )

buffalo_chicken_dip = Recipe.new(:name =>"Buffalo Chicken Dip", :user_id => @stacy.id)
buffalo_chicken_dip.cook_time = "30 minutes"
buffalo_chicken_dip_ingredients = ["chicken breasts", "cream cheese", "ranch dressing", "buffalo sauce", "shredded cheddar"]
buffalo_chicken_dip_ingredients.each {|i| buffalo_chicken_dip.ingredients.build(name: i)}
buffalo_chicken_dip.directions = ["Mix all ingredients","Place in greased 2 quart dish", "Bake 350 degrees", "Serve with Chips"]
buffalo_chicken_dip.save

moms_meatloaf = Recipe.new(:name => "Mom's Meatloaf", :user_id => @stacy.id)
moms_meatloaf.cook_time = "60 minutes"
moms_meatloaf_ingredients = ["ground beef", "egg", "breadcrumbs", "onion", "milk", "Heinz 57 hickory smoke", "salt", "pepper"]
moms_meatloaf_ingredients.each {|i| moms_meatloaf.ingredients.build(name: i)}
moms_meatloaf.directions = ["Mix all ingredients", "Shape in a loaf pan", "Bake 350 degrees"]
moms_meatloaf.save
# blueberry_pancakes = Recipe.new(name: 'Blueberry Pancakes')
# blueberry_pancakes_ingredients = ['All-purpose flour', 'Sugar', 'Baking powder', 'Baking soda', 'Salt', 'Large eggs', 'Milk', 'Sour cream', 'Butter', 'Vanilla extract', 'Blueberries', 'Lemon zest']
# blueberry_pancakes_ingredients.each{|i| blueberry_pancakes.ingredients.build(name: i)}
# blueberry_pancakes.save

# bacon_pancakes = Recipe.new(name: 'Bacon Pancakes')
# bacon_pancakes_ingredients = ['Some bacon', 'Pancake']
# bacon_pancakes_ingredients.each{|i| bacon_pancakes.ingredients.build(name: i)}
# bacon_pancakes.save
