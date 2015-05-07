class CreateGangsta < ActiveRecord::Migration
  def change
    create_table :gangsta do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
