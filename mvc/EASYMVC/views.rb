# VIEWS--------------------------
# View interface
# Views#render
# Views::new(kennel)

class KennelView
  def initialize(kennel, frog_view = FrogOwnerNameView )
    @kennel = kennel
    @frog_view = frog_view
  end

  def render
  #@kennel.frogs.map(&:name)
    @kennel.frogs.map { |frog|
      view = @frog_view.new(frog)
      view.render
    }
  end
end

class FrogOwnerNameView

  def initialize(frog)
    @frog = frog
  end

  def render
    @frog.name
  end
end

class FrogDetailView
  def initialize(frog)
    @frog = frog
  end

  def render
    <<-STRING
       ............................

           Name  : #{@frog.name}
           Breef : #{@frog.breed}
           Weight: #{@frog.weight}
           Owner : #{@frog.owner.name}

    STRING
  end
end


