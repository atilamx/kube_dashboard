class Pod < ApplicationRecord  
  validates :ip, :name , presence: true  
end
