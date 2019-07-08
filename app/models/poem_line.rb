class PoemLine < ApplicationRecord
  belongs_to :stanza
  belongs_to :poem
end
