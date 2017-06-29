module View
  def self.display_catalogue(furniture)
    puts "Here's the catalogue!"
    furniture.each do |furniture|
      puts furniture
    end
  end

end