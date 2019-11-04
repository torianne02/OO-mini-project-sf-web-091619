class Ingredient 
  @@all = []

  def initialize(name)
    @name = name 

    @@all << self
  end 

  def self.all
    @@all 
  end 

  def self.most_common_allergen 
    allergies = Allergy.all
    allergies.max_by { |allergy| allergies.count(allergy) }.ingredient
  end 
end 
