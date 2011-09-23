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

@random_color = ->
  hex = Math.abs(Math.random() * 0xFFFFFF << 0).toString 16
  hex = '0' + hex until hex.length == 6
  '#' + hex