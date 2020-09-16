def oxford_comma(array)

    if array.length == 1
        array.join
    elsif array.length == 2
        array.join(" and ")
    else

        array.each.collect do |value|
            if value == array[-1]
                array[-1] = "and " << value
            end
        end
        array.join(", ")
    end
end
