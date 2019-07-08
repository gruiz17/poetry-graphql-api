class Poem < ApplicationRecord
  belongs_to :author
  has_many :stanzas
  has_many :lines, class_name: "PoemLine"
end
