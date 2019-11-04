class RecipeCard
  attr_accessor :date, :rating, :user, :recipe
  @@all = []

  def initialize(rating, user, recipe, date = DateTime.now)
    @date = date.strftime('%Y-%m-%d')
    @rating = rating
    @user = user
    @recipe = recipe

    @@all << self
  end 

  def self.all
    @@all 
  end 
end 