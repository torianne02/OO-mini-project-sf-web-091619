require_relative '../config/environment.rb'

# users
bob = User.new("Bob")
amy = User.new("Amy")
dean = User.new("Dean")

# recipes 
burger = Recipe.new("Burger")
soup = Recipe.new("Soup")
pbj = Recipe.new("PB&J")
caramel_apple = Recipe.new("Caramel Apple")

# ingredients
beef_patty = Ingredient.new("beef patty")
bun = Ingredient.new("bun")
broth = Ingredient.new("broth")
tomato = Ingredient.new("tomato")
carrot = Ingredient.new("carrot")
chicken = Ingredient.new("chicken")
peanut_butter = Ingredient.new("peanut butter")
jelly = Ingredient.new("jelly")
bread = Ingredient.new("bread")
apple = Ingredient.new("apple")
caramel = Ingredient.new("caramel")
cheese = Ingredient.new("cheese")

# recipe ingredients
burger.add_ingredients([beef_patty, bun, tomato])
soup.add_ingredients([broth, carrot, chicken])
pbj.add_ingredients([peanut_butter, jelly, bread])
caramel_apple.add_ingredients([apple, caramel])

# recipe cards
bob.add_recipe_card(burger, DateTime.now, 4)
bob.add_recipe_card(pbj, DateTime.now, 3)
bob.add_recipe_card(soup, DateTime.now, 5)
bob.add_recipe_card(caramel_apple, DateTime.now, 5)
amy.add_recipe_card(pbj, DateTime.now, 2)
amy.add_recipe_card(soup, DateTime.now, 4)
dean.add_recipe_card(burger, DateTime.now, 4)
dean.add_recipe_card(pbj, DateTime.now, 2)


# allergies
bob.declare_allergy(cheese)
amy.declare_allergy(apple)
dean.declare_allergy(peanut_butter)

binding.pry
# hello