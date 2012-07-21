class CreateMdemos < ActiveRecord::Migration
  def change
    create_table :mdemos do |t|
      t.text :content
      t.string :title
      t.integer :age

      t.timestamps
    end
  end
end
