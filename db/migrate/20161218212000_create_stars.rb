class CreateStars < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.string :repository
      t.datetime :starred_at
      t.string :user

      t.timestamps
    end
  end
end
