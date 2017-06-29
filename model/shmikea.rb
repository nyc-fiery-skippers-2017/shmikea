class Shmikea

  attr_reader :furniture

  def initialize(filename)
    @furniture = load_furniture(filename) 
  end

  def load_furniture(filename)
    FurnitureLoader.parse(filename).map {|furniture| Furniture.new(furniture)}
  end

  def search(type)
    furniture.select{|f| f.type.casecmp(type) == 0}
  end
end

