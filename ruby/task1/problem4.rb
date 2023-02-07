def skip_sports(arr,skip_num)
  new_arr = []
  if(skip_num>=arr.length)
     return "index out of bound"
  else
    for i in skip_num..arr.length-1
        new_arr.append(i.to_s+':'+arr[i].to_s)
    end
  end
  return new_arr
end

puts skip_sports(["basketball","football","tennis","volleyball","gaming"],2)
