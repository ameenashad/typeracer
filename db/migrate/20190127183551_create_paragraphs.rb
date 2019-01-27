class CreateParagraphs < ActiveRecord::Migration[5.1]
  def change
    create_table :paragraphs do |t|
      t.text :text
      t.references :game
      t.timestamps
    end
  end
end
