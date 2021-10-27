module Enumerable
    def my_each
      yield self
    end
    def my_each_with_index
        x=self.length
        current=0
        while current<x
            yield self[current],current
            current+=1
        end
    end
    def my_select
        arr=[]
        current=0
        while current<self.length
            if yield self[current]
                arr<<self[current]
            end
            current+=1
        end
        return arr
    end
    def my_all?
        arr=[]
        current=0
        while current<self.length
            if yield self[current]
                arr<<self[current]
            end
            current+=1
        end
        return arr.length==self.length
    end

    def my_any?
        arr=[]
        current=0
        while current<self.length
            if yield self[current]
                arr<<self[current]
            end
            current+=1
        end
        return arr.length>0
    end

    def my_none?
        arr=[]
        current=0
        while current<self.length
            if yield self[current]
                arr<<self[current]
            end
            current+=1
        end
        return arr.length==0
    end

    def my_count
        arr=[]
        current=0
        while current<self.length
            if yield self[current]
                arr<<self[current]
            end
            current+=1
        end
        return arr.length
    end
    def my_map(&proc)
        arr=[]
        current=0
        while current<self.length
            if yield self[current]
                arr<<true
            else
                arr<<false
            end
            current+=1
        end
        return arr
    end

    def my_inject
        sum=1
        arr=[]
        current=0
        while current<self.length
            sum=yield sum,self[current]
            current+=1
        end
        sum-=1
        return sum
    end

    def multiply_els
        self.my_inject{|tot, item| tot*item}+1

    end
end


  puts "my_each vs. each"
numbers = [5, 4, 3, 2, 1]
#numbers.my_each  { |item| puts item }
#numbers.each  { |item| puts item }

#numbers.my_each_with_index  { |item,i| puts "#{item} #{i}" }
#numbers.each_with_index  { |item,i| puts "#{item} #{i}" }

#p numbers.my_select{ |item| item<4 }
#p numbers.select{ |item| item<4 }

#p numbers.my_all?{|item| item<3}
#p numbers.all?{|item| item<3}

#p numbers.my_any?{|item| item<0}
#p numbers.any?{|item| item<2}

#p numbers.my_none?{|item| item<6}
#p numbers.none?{|item| item<6}

#p numbers.my_count{|item| item<4}
#p numbers.count{|item| item<4}

p numbers.my_map{|item| item<4}
p numbers.map{|item| item<4}

#p numbers.my_inject{|sum,item| sum+item}
#p numbers.inject{|sum,item| sum+item}

#p numbers.multiply_els{|sum,item| sum+item}
#p 5*4*3*2*1