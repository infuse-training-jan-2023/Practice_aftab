
class Array
  def element_at(arr,index)
    if index >= arr.length
      return "index out of bound"
    end
    return arr[index]
  end
  def inclusive_range(arr,start_pos,end_pos)
    new_arr = []
    if end_pos >= arr.length
      return "index out of bounds"
    else
      for i in start_pos..end_pos
        new_arr.append(arr[i])
      end
    end
    return new_arr
  end
end

# puts Array.new.element_at([1,2,3,4,5],0)
# puts Array.new.inclusive_range([1,2,3,4,5],0,2)
