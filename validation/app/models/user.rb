class User < ApplicationRecord
 validates :name, presence: true
 validates :email, presence: true, uniqueness: true
 validates :age, presence: true, length: { minimum: 1, maximum: 2 }
 after_commit :testCallback
  
  private

  def testCallback
    puts "Hey im called"
  end
end
