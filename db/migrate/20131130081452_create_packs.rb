class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.string :title
      t.text :description
      t.string :thumbnail

      t.timestamps
    end
  end
end
