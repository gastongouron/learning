class Owner
  attr_reader :name  # => nil

  def initialize(attributes = {})
    @name = attributes[:name]      # => "Troy"
  end
end