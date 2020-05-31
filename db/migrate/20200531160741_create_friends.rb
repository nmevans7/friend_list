class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.integer :age
      t.string :hair_color
      t.string :eye_color
      t.string :gender
      t.boolean :alive
      t.string : 

      t.timestamps
    end
  end
end
