class CreateRuts < ActiveRecord::Migration[5.1]
  def change
    create_table :ruts do |t|
      t.string :time
      t.string :start
      t.string :end
      t.string :date
      t.integer :inte
      t.integer :intefull
      t.boolean :status
      t.integer :id_user
      t.timestamps
    end
  end
end
