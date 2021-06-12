class Api::V1::BooksController < ApplicationController

    def index 
        @books = Book.all 
        render json: @books
    end
    
    def create 
        @book - Book.new(books_params)
        if @book.save
            render json: @book, status: :accepted
        else
            render json: {errors: book.errors.full_messages}, status:
            :unprocessible_entity

        end
    end 



    private 

    def books_params
        params.require(:book).permit(:title, :author, :book_img, :genre_id)
    end


end
