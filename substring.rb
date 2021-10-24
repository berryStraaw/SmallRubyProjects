def substr(string, array)
    #.count("charset")
    obj={}
    string=string.downcase
    string.length.times do |time|
        string.length.times do |sec|
            if sec<time
            else
                temp= string.slice(time..sec)
                array.each do |item|
                    if temp==item
                        if obj.include?(temp)
                            obj[temp]+=1
                        else
                            obj[temp]=1
                        end
                    end
                end
            end
        end
    end
    p obj
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substr("Howdy partner, sit down! How's it going?", dictionary)

#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

#{"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "sit"=>1, "i"=>3, "it"=>2, "down"=>1, "own"=>1, "go"=>1, "going"=>1}