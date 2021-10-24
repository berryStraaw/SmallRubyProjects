def bubble_sort(arr)
    swapped=true
    while swapped
        swapped=false
        arr.each_with_index do |val,i|
            if i==arr.length-1
            elsif val> arr[i+1]
                temp=val
                arr[i]=arr[i+1]
                arr[i+1]=temp
                swapped=true
            end
        end
    end
    p arr
end
array=[4,3,78,2,0,2]
array1=[233,2334,421,1,5,525,1233333,125,5,7,97867,312] #,1233333,125,5,7,97867,312]
bubble_sort(array1)