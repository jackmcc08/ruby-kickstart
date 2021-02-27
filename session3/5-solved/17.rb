def print_list_in_reverse(list)
  return unless list
  print_list_in_reverse list[:next]
  puts list[:data]
end

head = {:data => 5, :next => nil}
print_list_in_reverse(head)
