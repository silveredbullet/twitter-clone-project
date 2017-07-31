class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
