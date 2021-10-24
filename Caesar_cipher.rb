def c_cipher(string,num)
    alph="abcdefghijklmnopqrstuvwxyz" #26
    alph_up=alph.upcase
    alph=alph.split("")
    alph_up=alph_up.split("")
    output=""
    string= string.split("")
    string.each do |letter|
        if alph.include?(letter)
            alph.each_with_index do |al, i| 
                if letter==al
                    if i+num>25
                        i-=26
                    end
                    output<<alph[i+num]
                end
            end
        elsif alph_up.include?(letter)
            alph_up.each_with_index do |al_up, i| 
                if letter==al_up
                    if i+num>25
                        i-=26
                    end
                    output<<alph_up[i+num]
                end
            end
        else
            output<<letter
        end
    end
    p output
end

c_cipher("What a string!",5)