module Types
  class PoemType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
  	field :lines, [Types::PoemLineType], null: true
  	field :stanzas, [Types::StanzaType], null: true
  	field :line_count, Integer, null: true
    field :stanza_count, Integer, null: true

    def line_count
      object.lines.size
    end

    def stanza_count
      object.stanzas.size
    end
  end
end
