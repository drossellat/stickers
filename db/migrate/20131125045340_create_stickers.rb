

class CreateStickers < ActiveRecord::Migration

  def change
    enable_extension 'uuid-ossp'
    create_table :stickers, id: :uuid do |t|
      t.string :title
      t.text :description
      t.string :URL
      t.string :size
      t.boolean :free

      t.timestamps
    end
  end
end
