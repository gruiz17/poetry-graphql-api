class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.belongs_to :author, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
