class Guest
  attr_reader :name, :rooms

  def initialize(name)
    @name = name
    @rooms = {}
  end

  def pretty_string
    "'#{@name}' has #{@rooms.size} rooms rented at the moment."
  end

end