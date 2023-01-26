def element_at(arr,index)
    #return the element of the array variable arr at the position 'index'
    # arr.at(index) or
    # arr[index]
    if index >= arr.length
      return "index out of bound"
    else return arr[index]
    end
end