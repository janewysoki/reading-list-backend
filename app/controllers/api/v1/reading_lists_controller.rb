class Api::V1::ReadingListsController < ApplicationController
    
    def index 
        @reading_lists = ReadingList.all
        render json: @reading_lists
    end

    def create 
        @reading_list = ReadingList.new(reading_list_params) #using new instead of create allows us to pass in the params
        if @reading_list.save
            render json: @reading_list
        else
            render json: {error: 'Error creating reading list.'}
        end
    end

    def show 
        @reading_list = ReadingList.find(params[:id]) #this is accessing /api/v1/reading_lists/1
        render json: @reading_list
    end

    def destroy
        @reading_list = ReadingList.find(params[:id]) #could create set account method since using this line twice
        @reading_list.destroy
    end

    private

    def reading_list_params
        params.require(:reading_list).permit(:name, :subject, :description)
    end
end
