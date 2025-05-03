bubble_array = [4,3,78,2,0,2]

def bubble_sort(array)


    # Create a loop that will run as many times as there are elements in the array - 1
    (array.length - 1).times do |i|

        (0...array.length - 1 - i).each do |element|

            if array[element] > array[element+1]
                array[element], array[element+1] = array[element+1], array[element]
            end

        end
    end
    array
end

p bubble_sort(bubble_array)