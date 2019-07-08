module Types
  class StanzaType < Types::BaseObject
    field :lines, [Types::PoemLineType], null: true
    field :line_count, Integer, null: true

    def line_count
      object.lines.size
    end
  end
end
