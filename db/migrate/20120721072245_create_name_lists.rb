class CreateNameLists < ActiveRecord::Migration
  def change
    create_table :name_lists do |t|
      t.integer :id
      t.string :name
      t.integer :age
      t.string :gender
      t.date :dob
      t.text :discription

      t.timestamps
    end
  end
end
