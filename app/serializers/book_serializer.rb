class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :comments, :summary, :reading_list_id
end

# don't necessarily need reading list id since the routes are rested, but if they weren't you would NEED reading list id