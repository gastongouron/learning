class Kennel

attr_reader :frogs  # => nil

  def initialize
    @frogs = []   # => []
  end

  def load_csv(file_name_with_extention)
    # parse CSV
    # do someting with header
    CSV.foreach(file_name_with_extention, headers: true, header_converters: :symbol) do |row|  # ~> Errno::ENOENT: No such file or directory @ rb_sysopen - frogs.csv
      # debugger
      # p row
      # p row.class
      # take each line and make object
      frog = Frog.new(row)
      # store them in @frogs
      @frogs << frog
    end
  end
end

