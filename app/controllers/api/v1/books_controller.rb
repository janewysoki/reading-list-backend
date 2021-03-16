class Api::V1::BooksController < ApplicationController
    before_action :set_list

    def index #only want books associated with specifc RL
        @books = @reading_list.books
        render json: @books
    end

    def create 
       @book = @reading_list.books.build(book_params)
       if @book.save
        render json: @book
       else
        render json: {error: 'Error creating book.'}
       end
    end

    def show 
       @book = Book.find(params[:id])
       render json: @book
       #could also just have: @book = @reading_list.books.find_by(id: params[:id])
    end

    def destroy
        #set_list
        #@book.destroy
    end

    private

    def set_list
        @reading_list = ReadingList.find(params[:reading_list_id]) #this id refers to api/v1/reading_lists/1/books
    end

    def book_params
        params.require(:book).permit(:reading_list_id, :title, :author, :comments, :summary)
    end

end
