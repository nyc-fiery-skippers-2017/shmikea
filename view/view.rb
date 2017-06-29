module View
  def self.display_catalogue(furniture)
    puts "Here's the results!"
    furniture.each do |furniture|
      puts furniture
    end
  end

end