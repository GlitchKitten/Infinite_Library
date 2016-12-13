class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :quote, presence: true, length: {maximum: 100}
  validates :isbn, presence: true, numericality: {only_integer: true}, length: {is: 10}
end
