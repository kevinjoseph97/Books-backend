class Book < ApplicationRecord
    belongs_to :genre

validates :title, presence: true 
validates :book_img, presence: true
validates :author, presence: true
validates :genre_id, presence: true


end
