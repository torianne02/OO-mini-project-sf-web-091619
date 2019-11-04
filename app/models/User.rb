class User 
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    
    @@all << self
  end 
  
  def self.all 
    @@all
  end 

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(rating, self, recipe, date)
  end 

  def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
  end 

  def allergens
    Allergy.all.select { |allergy| allergy.user == self }
  end 

  def top_three_recipes
    recipes = RecipeCard.all.select { |recipe| recipe.user == self }
    recipes.sort_by { |recipe| recipe.rating }[recipes.length - 3..recipes.length]
  end 

  def most_recent_recipe
    recipes = RecipeCard.all.select { |recipe| recipe.user == self }
    recipes.sort { |a, b| a.date <=> b.date }.last
  end
end 