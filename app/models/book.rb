class Book < ApplicationRecord
    belongs_to :reading_list
    validates :title, presence :true
end
