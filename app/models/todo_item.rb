class TodoItem < ActiveRecord::Base
  # associations
  belongs_to :todo_list
  
  # validations

  validates :body, presence: true,
                   length: { minimum: 5 }
                    
  validates :completed, presence: true

end
