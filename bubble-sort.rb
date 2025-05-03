bubble_array = [4,3,78,2,0,2]

def bubble_sort(array)


    (array.length - 1).times do |i|
        swapped_happened = false

        (0...array.length - 1 - i).each do |element|
            if array[element] > array[element+1]
                array[element], array[element+1] = array[element+1], array[element]
                swapped_happened = true
            end

        end
        break unless swapped_happened
    end
    array
end

p bubble_sort(bubble_array)