def fibs(num)
    arr=[]
    i=0
    prev=0
    sum=1
    while i<num
        temp=sum
        arr<<sum
        sum+=prev
        prev=temp
        i+=1 
    end
    return arr
end

def fibs_rec(num,arr=[])
    if num<2
        return num
    else
        fibs_rec(num-2)+fibs_rec(num-1)
    end
end

#p fibs(7)
#p fibs_rec(7)

def merge_sort(arr)
    if arr.length==1
        p arr
        return arr
    else
        splitA=arr.slice!(0,arr.length/2)
        splitB=arr
        
        sideA=merge_sort(splitA)
        sideB=merge_sort(splitB)
    end
    
end

toSort=[5,2,1,3,6,4]
 merge_sort(toSort)