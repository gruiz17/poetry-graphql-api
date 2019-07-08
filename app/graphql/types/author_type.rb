module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: false
    field :poems, [Types::PoemType], null: true
    field :poems_count, Integer, null: true

    def poems_count
      object.poems.size
    end
  end
end
