require './user'
require './user_list'

list = UserList.new
list.append(User.new("Júlio", 23, "Brazil"))
list.append(User.new("Júlia", 20, "Brazil"))
list.append(User.new("John", 42, "USA"))

puts list.filter {|user| user.name.include?("Júli")}