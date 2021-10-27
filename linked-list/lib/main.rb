require_relative 'linked_list'

list=LinkedList.new()
list.append(1)
list.append(2)
list.prepend(3)
list.append(4)

#[3,1,2,4]
#p list
#p list.size()
#p list.head()
#p list.tail()
#p list.at(3)
#p list.pop()
#p list
#p list.contains(3)
#p list.find(5)
#p list.to_s()
list.insert_at(5,2)
p list