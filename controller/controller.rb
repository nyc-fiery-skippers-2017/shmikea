class Controller
  def initialize(args={})
    @view = args.fetch(:view, View)
    @filepath = args.fetch(:filepath, 'db/shmikea.csv')
    @model = args.fetch(:model, Shmikea.new(@filepath))
    search_bot(ARGV[0])
  end

  def search_bot(user_input)
    case user_input
    when 'all'
      @view.display_catalogue(@model.furniture)
    end
  end

end