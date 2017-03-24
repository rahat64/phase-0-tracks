require_relative 'todo_list'

describe TodoList do 
  let(:todo_list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(todo_list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    todo_list.add_item("mop")
    expect(todo_list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    todo_list.delete_item("do the dishes")
    expect(todo_list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(todo_list.get_item(0)).to eq "do the dishes"
  end
end