class Api::V1::BooksController < ApplicationController
    before_action :set_list

    def index #only want books associated with specifc RL
        @books = Book.all
        render json: @books
    end

    def create 
       @book = @reading_list.books.new(book_params) #could use build instead of new
       if @book.save
        render json: @reading_list #returning updated reading list instead of book which makes the iteration in case ADD BOOK a little bit simpler so we could just replace that RL instead of going into that RL's books and replacing those 
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
        @book = Book.find(params["id"])
        #find the RL associated with this book because isntead of sending back book we send back RL
        @reading_list = ReadingList.find(book.reading_list_id)
        @book.destroy
        render json: @reading_list
    end

    private

    def set_list
        @reading_list = ReadingList.find(params[:reading_list_id]) #this id refers to api/v1/reading_lists/1/books
    end

    def book_params
        params.require(:book).permit(:reading_list_id, :title, :author, :comments, :summary)
    end

end
