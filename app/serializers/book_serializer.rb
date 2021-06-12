class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :title, :author, :book_img, :genre_id, :genre
end


