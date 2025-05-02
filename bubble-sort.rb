bubble_array = [4,3,78,2,0,2]

def bubble_sort(array)


    limit = array.size

    # This code will loop through the array and perform a swap if current_elem is greater than next_elem
        for element in 0..limit

            current_element = array[element]
            next_element = array[element+1]

            if (current_element && next_element)
                if (current_element > next_element)
                    array[element], array[element+1] = array[element+1],array[element]
                end
            else 
                next
            end
            puts "Iteration #{element + 1}: #{array}\n Swap Count: #{swap_counter}\n\n"    
        end



end

bubble_sort(bubble_array)
