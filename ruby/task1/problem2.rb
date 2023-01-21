def element_at(arr,index)
  #return the element of the array variable arr at the position 'index'
  # arr.at(index) or
  # arr[index]
  if index >= arr.length
    return "index out of bound"
  else return arr[index]
  end
end
def inclusive_range(arr,start_pos,end_pos)
  # return the elements of the array variable 'arr' between the start_pos and end_pos
  #(both inclusive)
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
def non_inclusive_range(arr,start_pos,end_pos)
  # return the elements of the array variable 'arr', start_pos inclusive and end_pos exclusive
  new_arr = []
  if end_pos>=arr.length
    return "index out of bound"
  else
    for i in start_pos..end_pos-1
      new_arr.append(arr[i])
    end
  end
  return new_arr
end
def start_and_length(arr,start_pos,length)
  #return 'length' elements of the array arr starting from start_pos
  new_arr = []
  if length>arr.length-start_pos
      return "index out of bound"
  else
      while(length!=0)
          new_arr.append(arr[start_pos])
          start_pos+=1;
          length-=1
      end
  end
  return new_arr
end

