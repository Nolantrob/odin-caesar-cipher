bubble_array = [4,3,78,2,0,2]

def bubble_sort(array)


    limit = array.size

    for iteration in 1..array.size-1
        swap_happened = false

        # This code will loop through the array and perform a swap if current_elem is greater than next_elem
        for element in 0..limit
            current_element = array[element]
            next_element = array[element+1]

            if (current_element && next_element)
                if (current_element > next_element)
                    array[element], array[element+1] = array[element+1],array[element]
                    swap_happened = true
                end
            # If there is no next element, we're at the end of the array, so we move onto the next iteration
            else 
                next
            end
        end
        puts "Iteration #{iteration}: #{array}\n\n"
        if swap_happened == false
            break
        end    
    end



end

bubble_sort(bubble_array)
