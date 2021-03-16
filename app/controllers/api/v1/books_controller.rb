class Api::V1::BooksController < ApplicationController
    before_action :set_list

    def index #only want books associated with specifc RL?
        @books = @reading_list.books
        render json: @books
    end

    def create 
       
    end

    def show 
       
    end

    def destroy
       
    end

    private

    def set_list
        @reading_list = ReadingList.find(params[:reading_list_id]) #this id refers to api/v1/reading_lists/1/books
    end

    def book_params
        params.require(:book).permit(:reading_list_id, :title, :author, :comments, :summary)
    end

end
