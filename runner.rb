require 'csv'
require_relative 'model/shmikea'
require_relative 'model/furniture'
require_relative 'furniture_loader'


shmikea = Shmikea.new('db/shmikea.csv')
puts "Here's the catalogue!"
shmikea.furniture.each do |furniture|
  puts furniture
end