def stock_picker(array)
    best=[0,0,0]
    comb=[]
    array.each_index do |i|
        array.length.times do |time|
            comb<< [i,time] unless time<=i
        end
    end
    comb.select!{|item| array[item[0]]<array[item[1]]}
    comb.each {|item| item[2]=array[item[1]]-array[item[0]]}
    comb.each{|item| best=item if item[2]>best[2]}
    p "Buy at day: #{best[0]}, sell at day: #{best[1]}, for a profit of: #{best[2]}"
end


stock=[17,3,6,9,15,8,6,1,10]
stock_picker(stock)