class Frog
  attr_reader :name, :breed, :weight, :owner  # => nil
  attr_accessor :id                           # => nil

  def initialize(attributes = {})
    @id = attributes[:id]                              # => 42
    @name = attributes[:name]                          # => "Milo"
    @breed = attributes[:breed]                        # => "lowl"
    @weight = attributes[:weight]                      # => 29
    @owner = Owner.new(name: attributes[:owner_name])  # => #<Owner:0x007f9e1a832560 @name="Troy">
  end
end

# frog = Frog.new(id: 42, name: "Milo", breed: "lowl", weight: 29, owner_name: "Troy")  # => #<Frog:0x007f9e1a832b78 @id=42, @name="Milo", @breed="lowl", @weight=29, @owner=#<Owner:0x007f9e1a832560 @name="Troy">>
