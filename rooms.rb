class Room
  attr_reader :number, :type

  def initialize(options={})
    @number = options[:number]
    @type = options[:type]
  end

  def pretty_string
      "'#{@number}', a #{@type} room"
    end

end