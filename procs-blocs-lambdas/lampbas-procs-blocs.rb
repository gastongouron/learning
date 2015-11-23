# arr = [1,2,3,4]   # => [1, 2, 3, 4]
# arr.each do |el|  # => [1, 2, 3, 4]
# puts el           # => nil, nil, nil, nil
# end               # => [1, 2, 3, 4]

# # >> 1
# # >> 2
# # >> 3
# # >> 4

# arr = [1,2,3,4]            # => [1, 2, 3, 4]
# arr.each { |el| puts el }  # => [1, 2, 3, 4]

# # >> 1
# # >> 2
# # >> 3
# # >> 4


# def run_block
#   yield if block_given?  # => nil, nil
# end

# run_block do
#   puts "Hello World"  # => nil
# end                   # => nil

# run_block  # => nil



# class Array
#   def random_each
#     shuffle.each do |el|  # => [1, 4, 2, 5, 3]
#       yield el            # => nil, nil, nil, nil, nil
#     end                   # => [1, 4, 2, 5, 3]
#   end
# end


# [1,2,3,4,5].random_each do |el|  # => [1, 2, 3, 4, 5]
#   puts el                        # => nil, nil, nil, nil, nil
# end                              # => [1, 4, 2, 5, 3]



# class Array
#   def random_each(&b)
#     p b                   # => #<Proc:0x007f9c20956870@/Users/Paul/phase-1/week-2/Week-end/lampbas-procs-blocs.rb:56>
#     shuffle.each do |el|  # => [3, 1, 4, 2, 5]
#       b.call el           # => nil, nil, nil, nil, nil
#     end                   # => [3, 1, 4, 2, 5]
#   end
# end

# [1,2,3,4,5].random_each do |el|  # => [1, 2, 3, 4, 5]
#   puts el                        # => nil, nil, nil, nil, nil
# end                              # => [3, 1, 4, 2, 5]


# def run_two_procs(a,b)
#   a.call
#   b.call
# end

# proc1 = Proc.new
#  "this is 1"
# end

# proc1 = Proc.new
#  "this is 2"
# end

# run_two_procs proc1, proc2  # ~> NameError: undefined local variable or method `proc1' for main:Object

# def run_block
#   p = Proc.new  # => #<Proc:0x007f9c20955ba0@/Users/Paul/phase-1/week-2/Week-end/lampbas-procs-blocs.rb:81>
#   p.call        # => nil
# end

# run_block do
#   puts "Hello world"  # => nil
# end                   # => nil

# my_proc = Proc.new do |a|               # => Proc
#   puts "My proc #{a} was passed to me"  # => nil, nil, nil, nil
# end                                     # => #<Proc:0x007fa5a2875010@/Users/Paul/phase-1/week-2/Week-end/lampbas-procs-blocs.rb:85>

# my_proc.call(10)  # => nil
# my_proc.(20)      # => nil
# my_proc[30]       # => nil
# my_proc === 40    # => nil


# several = Proc.new { |number| number > 3 && number < 8 }
# many    = Proc.new { |number| number > 3 && number < 8 }
# few     = Proc.new { |number| number == 3 }
# couple  = Proc.new { |number| number == 2 }
# none    = Proc.new { |number| number == 0 }

# 0.upto(10) do |number|
#   print "#{number} item is "
#   case number
#   when "several"
#     puts "several"
#   when many
#     puts "many"
#   when few
#     puts "few"
#   when couple
#     puts "couple"
#   when none
#     "puts none"
#   else
#     puts "gg"
#   end
# end


# hello = lambda do
#   puts "proc1"     # => nil
# end                # => #<Proc:0x007f8a03049fb8@/Users/Paul/phase-1/week-2/Week-end/lampbas-procs-blocs.rb:120 (lambda)>

# hello.call  # => nil


# hello = proc do |a,b,c|  # lambda do doesnt work
#   puts "proc1"           # => nil
# end                      # => #<Proc:0x007fbc2103ae50@/Users/Paul/phase-1/week-2/Week-end/lampbas-procs-blocs.rb:127>

# hello.call  # => nil


def run_a_proc(p)
  puts "Starting to run a proc"  # => nil, nil, nil, nil
  p.call                         # => nil, nil, nil
  puts "Finished runnning"       # => nil, nil, nil
end

run_a_proc lambda { puts "I'm a lambda"; return}  # => nil
run_a_proc proc { puts "I'm a proc" } #; return}      # ~> LocalJumpError: unexpected return


def our_program
run_a_proc lambda { puts "I'm a lambda"; return}  # => nil
run_a_proc proc { puts "I'm a proc"; return}
end

our_program  # => nil

# >> Starting to run a proc
# >> I'm a lambda
# >> Finished runnning
# >> Starting to run a proc
# >> I'm a proc
# >> Finished runnning
# >> Starting to run a proc
# >> I'm a lambda
# >> Finished runnning
# >> Starting to run a proc
# >> I'm a proc
