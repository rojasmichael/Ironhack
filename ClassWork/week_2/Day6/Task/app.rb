require_relative ('lib/Task.rb')

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id
# 2



task = Task.new("Buy the milk")
puts task.complete?
# false
puts task.complete!
puts task.complete?