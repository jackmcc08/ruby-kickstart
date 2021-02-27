# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# Print to stdout, each element in a hash based linked list.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# print_list head                    # >> "1\n"
# head = {:data => 2, :next => head}
# print_list head                    # >> "2\n1\n"
# head = {:data => 3, :next => head}
# print_list head                    # >> "3\n2\n1\n"
# head = {:data => 4, :next => head}
# print_list head                    # >> "4\n3\n2\n1\n"
# head = {:data => 5, :next => head}
# print_list head                    # >> "5\n4\n3\n2\n1\n"
# head = {:data => 6, :next => head}
# print_list head                    # >> "6\n5\n4\n3\n2\n1\n"

def middle(head)
  # return 1 if head[:next] == nil
  (head[:data].to_f / 2).round
end

def print_list(head)
 # if head[:next] == nil
 #   list << "#{head[:data]}\n"
 #   return list
 # end
 puts head[:data]
 if head[:data] <= 1
   return
 else
   head[:data] -= 1
   print_list(head)
 end
end
head = {:data => 1, :next => nil}
print_list(head  )
#
# head = {:data => 5, :next => head}
# puts middle head
