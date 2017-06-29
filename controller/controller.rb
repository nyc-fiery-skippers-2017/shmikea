class Controller
  def initialize(args={})
    @model = args.fetch(:model, Shmikea)
    @view = args.fetch(:view, View)
    @filepath = args.fetch(:filepath, 'db/shmikea.csv')

    shmikea = @model.new(@filepath)
    @view.display_catalogue(shmikea.furniture)
  end

end