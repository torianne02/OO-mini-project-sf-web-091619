class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name 

    @@all << self
  end 

  def self.all 
    @@all
  end 

  def self.most_popular
    recipes = RecipeCard.all.map { |recipe_card| recipe_card.recipe }
    recipes.max_by { |recipe| recipes.count(recipe) }
  end 

  def users
    users = [] 

    RecipeCard.all.select do |recipe_card| 
      if recipe_card.recipe == self
        users << recipe_card.user 
      end 
    end 

    users
  end 

  def ingredients 
    RecipeIngredient.all.select { |recipe_ing| recipe_ing.recipe == self }
  end 

  def allergens 
    Allergy.all.select do |allergy| 
      if self.ingredients.map { |rec_ing| rec_ing.ingredient }.include?(allergy.ingredient)
        allergy
      end  
    end 
  end 

  def add_ingredients(ingreds)
    ingreds.map { |ingredient| RecipeIngredient.new(ingredient, self) }
  end 
end 