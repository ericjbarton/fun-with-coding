# Create a class for a ToDo item
class ToDo
  # Initialize a ToDo item with a description
  def initialize(description)
    @description = description
    # Set the default status to incomplete
    @complete = false
  end

  # Setter method for the description
  def description=(description)
    @description = description
  end

  # Getter method for the description
  def description
    @description
  end

  # Setter method for the complete status
  def complete=(complete)
    @complete = complete
  end

  # Getter method for the complete status
  def complete
    @complete
  end

  # Method to mark a ToDo item as complete
  def mark_complete
    @complete = true
  end

  # Method to mark a ToDo item as incomplete
  def mark_incomplete
    @complete = false
  end
end

# Create a class for the ToDo list
class ToDoList
  # Initialize a new ToDo list
  def initialize
    @to_do_items = []
  end

  # Method to add a ToDo item to the list
  def add_item(to_do_item)
    @to_do_items << to_do_item
  end

  # Method to remove a ToDo item from the list
  def remove_item(to_do_item)
    @to_do_items.delete(to_do_item)
  end

  # Method to mark a ToDo item as complete
  def mark_complete(to_do_item)
    to_do_item.mark_complete
  end

  # Method to mark a ToDo item as incomplete
  def mark_incomplete(to_do_item)
    to_do_item.mark_incomplete
  end

  # Method to print the list of ToDo items
  def print_list
    @to_do_items.each do |to_do_item|
      puts to_do_item.description + " | Complete: " + to_do_item.complete.to_s
    end
  end
end

# Create a new ToDo list

list = ToDoList.new("clean and stuff")
p list
print_list
