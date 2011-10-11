$ ->
  # delete every occurence of value from array
  unless Array::delete?
    Array::delete = (value) -> 
      deleted = null
      until (index = @indexOf value) == -1
        deleted = @splice index, 1
      deleted
      
  # return first element in array
  unless Array::first?
    Array::first = -> 
      @[0]
      
  # return last element in array
  unless Array::last?
    Array::last = -> 
      @[@.length - 1]
  
  # delete at specified index
  unless Array::delete_at?
    Array::delete_at = (index) -> 
      @splice index, 1
  
  # check whether an array is empty
  unless Array::empty?
    Array::empty = -> 
      @length == 0

  # get max element in array or return undefined if empty
  unless Array::max?
    Array::max = ->
      Math.max.apply Math, @ unless @empty()

  # get min element in array or return undefined if empty
  unless Array::min?
    Array::min = ->
      Math.min.apply Math, @ unless @empty()

  # generate random color
  @random_color = ->
    hex = Math.abs(Math.random() * 0xFFFFFF << 0).toString 16
    hex = '0' + hex until hex.length == 6
    '#' + hex