class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :name
      t.string :phone
      t.string :password
      t.integer :point

      t.timestamps
    end
  end
end
