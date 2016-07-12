class TodoList < ActiveRecord::Base
  
  #Validations
  validates :title, presence: true,
                    length: { minimum: 3 }
                    
  validates :description, presence: true,
                          length: { minimum: 5 }

end
