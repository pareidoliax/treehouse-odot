FactoryGirl.define do
  factory :todo_item do
    body "Brush my teeth before each meal."
    todo_list
  end
end
