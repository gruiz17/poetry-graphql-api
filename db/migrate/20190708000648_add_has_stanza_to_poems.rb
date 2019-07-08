class AddHasStanzaToPoems < ActiveRecord::Migration[5.2]
  def change
    add_column :poems, :has_stanza, :boolean
  end
end
