class CreatePoemLines < ActiveRecord::Migration[5.2]
  def change
    create_table :poem_lines do |t|
      t.belongs_to :stanza, foreign_key: true
      t.belongs_to :poem, foreign_key: true
      t.integer :line_number_for_stanza
      t.integer :line_number_for_poem
      t.string :content

      t.timestamps
    end
  end
end
