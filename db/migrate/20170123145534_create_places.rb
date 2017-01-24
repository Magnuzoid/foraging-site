class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.float :lat
      t.float :lng
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
