class User < ApplicationRecord
 validates :name, presence: true
 validates :email, presence: true, uniqueness: true
 validates :age, presence: true, length: { minimum: 1, maximum: 2 }
end
