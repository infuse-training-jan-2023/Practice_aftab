def remove_keys(hash)

  hash.each do |key,value|
      result = key.is_a?Integer
    case result
    when true
      if is_even(key)
        hash.delete(key)
      end
    when false
      hash.delete(key)
    else
        return "test"
    end
  end
  return hash
end

def is_even(value)
  return (value%2==0)
end
puts remove_keys({513121 => 100,10 =>200,"hello" => 23})

