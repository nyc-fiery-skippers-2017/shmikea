class Controller
  def initialize(args={})
    @model = args.fetch(:model, Shmikea)
    @filepath = args.fetch(:filepath, 'db/shmikea.csv')

    shmikea = @model.new(@filepath)
    puts "Here's the catalogue!"
    shmikea.furniture.each do |furniture|
      puts furniture
    end
  end

end