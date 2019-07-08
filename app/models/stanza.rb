class Stanza < ApplicationRecord
  belongs_to :poem
  has_many :lines, class_name: "PoemLine"
end
