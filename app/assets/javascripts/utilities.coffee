# delete every occurence of value from array
unless Array::delete?
  Array::delete = (value) -> 
    deleted = null
    until (index = @indexOf value) == -1
      deleted = @splice index, 1
    deleted

# check whether an array is empty
unless Array::empty?
  Array::empty = -> 
    @length == 0