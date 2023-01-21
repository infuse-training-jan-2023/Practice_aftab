
def extract(element)
    serial = ""
    num1 = ""
    num2 = ""
    hyphen_seen = false
    number_of_hyphen_seen = 0
    result = ""
    i = 0
    while (i < element.length)
        if (element[i] == '-')
            hyphen_seen = true
            number_of_hyphen_seen += 1
        elsif (hyphen_seen)
            if (number_of_hyphen_seen==1)
                num1 += element[i]
            elsif(number_of_hyphen_seen==2)
                num2 += element[i]
            end
        else
            serial = serial + element[i].to_s
        end
        i += 1
    end
    average = take_average(num1.to_f,num2.to_f)
    result = serial + "-" + ('%.2f' % average).to_s
    return result
end
def take_average(num1,num2)
    return (num1+ num2).round(2)/2
end

element = "009-10.00-20.00"
extract(element)




