class ReadingListSerializer < ActiveModel::Serializer
  attributes :id, :name, :subject, :description #so only these attrs get fetched, not the created at or any other unnecessary info
  has_many :books #so pass in the attrs i tell you above, but also recognize this association
end

