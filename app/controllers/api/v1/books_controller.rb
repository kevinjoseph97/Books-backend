class Api::V1::BooksController < ApplicationController
    before_action :set_book, only: [:show, :update, :destroy]

    def index 
        # @books = Book.all 
        # render json: BookSerializer.new(@books)
        if params[:genre_id]
            @genre = Genre.find_by_id(params[:genre_id])
            @books = @genre.books
        else
            @books = Book.all
        end
        render json: BookSerializer.new(@books)
    end

    def show
        render json: @book
    end
    
    
    def create 
        @book = Book.new(books_params)
        if @book.save
            render json:BookSerializer.new(@book), status: :accepted
        else
            render json: {errors: @book.errors.full_messages}, status:
            :unprocessible_entity

        end
    end 

    def update
        if @book.update(books_params)
          render json: @book
        else
            render json: {errors: @book.errors.full_messages}, status:
            :unprocessible_entity
        end
    end

    def destroy
        @book.destroy
    end



    private 
    def books_params
        params.require(:book).permit(:title, :author, :book_img, :genre_id)
    end

    def set_book
        @book = Book.find(params[:id])
    end


end
