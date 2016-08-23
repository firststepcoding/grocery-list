class GroceryList
  attr_reader :items_hash

  def initialize
    @items_hash = {}
  end

  def add_item(item_name, count)
    @items_hash[item_name] = count
  end

  # Take the Hash of items and convert it into a line-separated list.
  # This method should return a multiline string of the form:
  # apples - 3
  # milk - 1
  # carrots - 5
  #
  # As shown above, each item should be on a line next to the number of
  # desired items, separated by a dash. Remember that you can use the special
  # \n character to move to the next line.
  def to_s
    return "FIX ME"
  end

  def write_to_file
    # TODO: output the string version of this list from to_s into a text file.
    # This way, we can print out the text file and take it to the store with us.
  end
end

# RUNNER CODE. DO NOT CHANGE BELOW THIS LINE.
# HOWEVER, YOU CAN COMMENT OUT BELOW THIS LINE WHILE YOU TEST YOUR
# INDIVIDUAL METHODS.
my_grocery_list = GroceryList.new

while true
  puts 'What item would you like buy? Or, type "done" when you are finished.'
  item_name = gets.chomp
  # The user type "done" when they are done entering items
  if item_name == "done"
    break
  else
    puts "How many #{item_name} do you want?"
    item_count = gets.chomp
    my_grocery_list.add_item(item_name, item_count)
  end
end

# At this point, we have collected all the items that the user wants.
# We just want to print them out and write the result to a text file.
puts my_grocery_list
my_grocery_list.write_to_file()
