def my_select(collection)
  if collection == []
    puts "The block cannot be run"
  end
  new_collection = []
  if block_given?
    i = 0
    while i < collection.size
      a = yield collection[i]
      i += 1
      new_collection << a
    end
    new_collection
  else
    puts "There is no block given"
  end
end
nums = [1, 2, 3, 4, 5]
my_select(nums) do |i|
   if i.even?
     i
   end
end
