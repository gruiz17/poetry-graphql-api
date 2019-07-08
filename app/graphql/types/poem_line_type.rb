module Types
  class PoemLineType < Types::BaseObject
    field :content, String, null: false
    field :line_number_for_stanza, Integer, null: false
    field :line_number_for_poem, Integer, null: false
  end
end
