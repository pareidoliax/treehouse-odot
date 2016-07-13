class TodoList < ActiveRecord::Base
  #associations
  has_many :todo_items, dependent: :destroy
  
  #Validations
  validates :title, presence: true,
                    length: { minimum: 3 }
                    
  validates :description, presence: true,
                          length: { minimum: 5 }

end
