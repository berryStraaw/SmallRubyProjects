require_relative 'node'

class LinkedList
    attr_accessor :name
    def initialize()
        @head=nil
        @tail=nil
    end
    def append(value)
        node=Node.new(value)
        @head||=node
        unless @tail
            @tail=node
        else
            @tail.next_node=node
        end
        @tail=node
    end

    def prepend(value)
        node=Node.new(value,@head)
        @head=node
    end

    def size()
        temp=@head
        size=1
        while temp.next_node
            size+=1
            temp=temp.next_node
        end
        return size
    end
    def head()
        return @head#.value
    end
    def tail()
        return @tail#.value
    end
    def at(index)
        i=0
        temp=@head
        while i<index
            temp=temp.next_node
            i+=1
        end
        return temp
    end
    def pop()
        @tail=self.at(self.size-2)
        self.at(self.size-2).next_node=nil
    end
    def contains(val)
        temp=@head
        check=false
        while temp.next_node
            if temp.value==val
                check=true
                return check
            end
            temp=temp.next_node
        end
        if temp.value==val
            check=true
        end
        return check
    end
    def find(val)
        temp=@head
        i=0
        while temp.next_node
            if temp.value==val
                return i
            end
            i+=1
            temp=temp.next_node
        end
        if temp.value==val
            return i
        else
            return nil
        end
    end

    def to_s()
        temp=@head
        string=""
        while temp.next_node
            string<<"( #{temp.value} ) -> "
            temp=temp.next_node
        end
        string<<"( #{temp.value} ) -> nil"
        string
    end
    def insert_at(val,ind)
        node=Node.new(val,self.at(ind))
        self.at(ind-1).next_node=node
    end
end



