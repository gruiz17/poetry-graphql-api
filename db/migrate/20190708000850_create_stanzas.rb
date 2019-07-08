class CreateStanzas < ActiveRecord::Migration[5.2]
  def change
    create_table :stanzas do |t|
      t.belongs_to :poem, foreign_key: true
      t.integer :stanza_number

      t.timestamps
    end
  end
end
