# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse(list, ary=[])
  if list[:data] == 0
    ary.reverse.each {|elem| puts elem }
    return
  end
  ary << list[:data]
  list[:data] -= 1
  print_list_in_reverse(list, ary)
end

#
# def print_list(head)
#  # if head[:next] == nil
#  #   list << "#{head[:data]}\n"
#  #   return list
#  # end
#  puts head[:data]
#  if head[:data] <= 1
#    return
#  else
#    head[:data] -= 1
#    print_list(head)
#  end
# end
head = {:data => 5, :next => nil}
print_list_in_reverse(head  )
