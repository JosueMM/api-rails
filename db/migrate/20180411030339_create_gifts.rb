class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :points
      t.string :gift

      t.timestamps
    end
  end
end
