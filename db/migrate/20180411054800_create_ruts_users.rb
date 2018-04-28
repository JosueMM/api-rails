class CreateRutsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :ruts_users do |t|
      t.references :user, foreign_key: true
      t.references :rut, foreign_key: true
      t.timestamps
    end
  end
end
