class CreateHumanos < ActiveRecord::Migration
  def change
    create_table :humanos do |t|
      t.integer :mujer
      t.integer :hombre

      t.timestamps null: false
    end
  end
end
