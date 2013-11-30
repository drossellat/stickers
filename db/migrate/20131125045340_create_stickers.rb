

class CreateStickers < ActiveRecord::Migration

  def change
    enable_extension 'uuid-ossp'
    create_table :stickers, id: :uuid do |t|
      t.string :title
      t.text :description
      t.string :URL
      t.string :size
      t.string :shortURL

      t.timestamps
    end
  end
end
