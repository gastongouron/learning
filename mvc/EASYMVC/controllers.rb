# controlling the flow:
# CONTROLLER--------------------------
# POLYMORPHISM :
# Same interface for different entities
# interface
class KennelController

  def run
  # 1. Instanciating kennel
  @kennel = Kennel.new                            # => #<Kennel:0x007f9e1a82b300 @frogs=[]>
  # 2. Tells the kennel to do something interesting to itself
  @kennel.load_csv('frogs.csv')
  # 3. prints some stuff to standard output
  view = KennelView.new(@kennel, FrogDetailView)
  puts view.render
  end

end
