class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :quote, presence: true, length: {maximum: 1000}
  validates :isbn, presence: true, length: {is: 10}
end
