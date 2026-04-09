class User < ApplicationRecord
 validates :name, presence: true
 validates :email, presence: true, uniqueness: true
 validates :age, presence: true, length: { minimum: 1, maximum: 2 }
#  after_commit :testCallback if saved_change_to_email?
  
  private

  def testCallback
    puts "Hello Callback"
  end
  # def testMethod
  #   binding.pry
  #   puts "Hello Dirty Method"
  # end
end
